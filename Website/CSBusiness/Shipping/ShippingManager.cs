using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CSData;
using CSBusiness.ShoppingManagement;
using CSBusiness.Preference;

namespace CSBusiness.Shipping
{
    public class ShippingManager : IShippingCalculator
    {
        static Dictionary<ShippingOptionType, IShippingCalculator> _allShippingCalculators;
		static Dictionary<ShippingOptionType, IShippingCalculator> _allRushShippingCalculators;
        static Dictionary<string, decimal> additionalRushShippingCosts;

        static ShippingManager()
        {
            _allShippingCalculators = new Dictionary<ShippingOptionType, IShippingCalculator>();
            _allShippingCalculators.Add(ShippingOptionType.TotalAmount, new OrderValueShippingCalculator(false));
            _allShippingCalculators.Add(ShippingOptionType.Weight, new OrderWeightShippingCalculator(false));
            _allShippingCalculators.Add(ShippingOptionType.SkuBased, new SkuBasedShippingCalculator(false));
            _allShippingCalculators.Add(ShippingOptionType.Flat, new FlatShippingCalculator(false));

			_allRushShippingCalculators = new Dictionary<ShippingOptionType, IShippingCalculator>();
			_allRushShippingCalculators.Add(ShippingOptionType.TotalAmount, new OrderValueShippingCalculator(true));
			_allRushShippingCalculators.Add(ShippingOptionType.Weight, new OrderWeightShippingCalculator(true));
			_allRushShippingCalculators.Add(ShippingOptionType.SkuBased, new SkuBasedShippingCalculator(true));
			_allRushShippingCalculators.Add(ShippingOptionType.Flat, new FlatShippingCalculator(true));

            additionalRushShippingCosts = new Dictionary<string, decimal>();

        }

        public void Calculate(Cart cart, int prefID)
        {
            SitePreference shippingPreferences = CSFactory.GetCartPrefrence(cart);
            if (shippingPreferences != null)
            {
                ShippingOptionType option = shippingPreferences.ShippingOptionId;
                IShippingCalculator calculator = _allShippingCalculators[option];
				calculator.Calculate(cart, shippingPreferences.ShippingPrefID);

                //CodeReview: Instead of Cart pref and compute based on the admin pref
				if (cart.ShippingMethod == UserShippingMethodType.Rush)
				{
					ShippingOptionType rushOption = shippingPreferences.RushShippingOptionID;
					IShippingCalculator rushCalculator = _allRushShippingCalculators[rushOption];
					rushCalculator.Calculate(cart, shippingPreferences.RushShippingPrefID);
				}
				else
				{
					cart.RushShippingCost = 0;
				}
            }
            else
            {
                throw new InvalidOperationException("Missing shipping preferences");
            }
        }

        public static List<ShippingCharge> GetAllShippingCharges()
        {
            return ShippingDAL.GetAllShippingCharges();
        }

        public static List<ShippingCharge> GetShippingChargesByPref(int prefId)
        {
            return ShippingDAL.GetShippingChargesByPref(prefId);
        }

        public static void RemoveShippingCharge(int shippingChargeId)
        {
            ShippingDAL.RemoveShippingCharge(shippingChargeId);
        }
    }
}
