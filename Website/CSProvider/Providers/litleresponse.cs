﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.5446
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System.Xml.Serialization;

// 
// This source code was auto-generated by xsd, Version=2.0.50727.3038.
// 


/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://www.litle.com/schema")]
[System.Xml.Serialization.XmlRootAttribute(Namespace = "http://www.litle.com/schema", IsNullable = false)]
public partial class litleOnlineResponse
{

    private litleOnlineResponseAuthorizationResponse[] authorizationResponseField;

    private litleOnlineResponseVoidResponse[] voidResponseField;

    private litleOnlineResponseCreditResponse[] creditResponseField;

    private string versionField;

    private string responseField;

    private string messageField;

    /// <remarks/>
    [System.Xml.Serialization.XmlElementAttribute("creditResponse")]
    public litleOnlineResponseCreditResponse[] creditResponse
    {
        get
        {
            return this.creditResponseField;
        }
        set
        {
            this.creditResponseField = value;
        }
    }


    /// <remarks/>
    [System.Xml.Serialization.XmlElementAttribute("voidResponse")]
    public litleOnlineResponseVoidResponse[] voidResponse
    {
        get
        {
            return this.voidResponseField;
        }
        set
        {
            this.voidResponseField = value;
        }
    }
    

    /// <remarks/>
    [System.Xml.Serialization.XmlElementAttribute("authorizationResponse")]
    public litleOnlineResponseAuthorizationResponse[] authorizationResponse
    {
        get
        {
            return this.authorizationResponseField;
        }
        set
        {
            this.authorizationResponseField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string version
    {
        get
        {
            return this.versionField;
        }
        set
        {
            this.versionField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string response
    {
        get
        {
            return this.responseField;
        }
        set
        {
            this.responseField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string message
    {
        get
        {
            return this.messageField;
        }
        set
        {
            this.messageField = value;
        }
    }
}


/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://www.litle.com/schema")]
public partial class litleOnlineResponseCreditResponse
{

    private string litleTxnIdField;

    private string orderIdField;

    private string responseField;

    private string responseTimeField;

    private string postDateField;

    private string messageField;

    private string idField;

    private string reportGroupField;

    /// <remarks/>
    public string litleTxnId
    {
        get
        {
            return this.litleTxnIdField;
        }
        set
        {
            this.litleTxnIdField = value;
        }
    }

    /// <remarks/>
    public string orderId
    {
        get
        {
            return this.orderIdField;
        }
        set
        {
            this.orderIdField = value;
        }
    }

    /// <remarks/>
    public string response
    {
        get
        {
            return this.responseField;
        }
        set
        {
            this.responseField = value;
        }
    }

    /// <remarks/>
    public string responseTime
    {
        get
        {
            return this.responseTimeField;
        }
        set
        {
            this.responseTimeField = value;
        }
    }

    /// <remarks/>
    public string postDate
    {
        get
        {
            return this.postDateField;
        }
        set
        {
            this.postDateField = value;
        }
    }

    /// <remarks/>
    public string message
    {
        get
        {
            return this.messageField;
        }
        set
        {
            this.messageField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string id
    {
        get
        {
            return this.idField;
        }
        set
        {
            this.idField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string reportGroup
    {
        get
        {
            return this.reportGroupField;
        }
        set
        {
            this.reportGroupField = value;
        }
    }
}


/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://www.litle.com/schema")]
public partial class litleOnlineResponseAuthorizationResponse
{

    private string litleTxnIdField;

    private string orderIdField;

    private string responseField;

    private string responseTimeField;

    private string postDateField;

    private string messageField;

    private string authCodeField;

    private litleOnlineResponseAuthorizationResponseFraudResult[] fraudResultField;

    private string idField;

    private string reportGroupField;

    private string customerIdField;

    /// <remarks/>
    public string litleTxnId
    {
        get
        {
            return this.litleTxnIdField;
        }
        set
        {
            this.litleTxnIdField = value;
        }
    }

    /// <remarks/>
    public string orderId
    {
        get
        {
            return this.orderIdField;
        }
        set
        {
            this.orderIdField = value;
        }
    }

    /// <remarks/>
    public string response
    {
        get
        {
            return this.responseField;
        }
        set
        {
            this.responseField = value;
        }
    }

    /// <remarks/>
    public string responseTime
    {
        get
        {
            return this.responseTimeField;
        }
        set
        {
            this.responseTimeField = value;
        }
    }

    /// <remarks/>
    public string postDate
    {
        get
        {
            return this.postDateField;
        }
        set
        {
            this.postDateField = value;
        }
    }

    /// <remarks/>
    public string message
    {
        get
        {
            return this.messageField;
        }
        set
        {
            this.messageField = value;
        }
    }

    /// <remarks/>
    public string authCode
    {
        get
        {
            return this.authCodeField;
        }
        set
        {
            this.authCodeField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlElementAttribute("fraudResult")]
    public litleOnlineResponseAuthorizationResponseFraudResult[] fraudResult
    {
        get
        {
            return this.fraudResultField;
        }
        set
        {
            this.fraudResultField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string id
    {
        get
        {
            return this.idField;
        }
        set
        {
            this.idField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string reportGroup
    {
        get
        {
            return this.reportGroupField;
        }
        set
        {
            this.reportGroupField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string customerId
    {
        get
        {
            return this.customerIdField;
        }
        set
        {
            this.customerIdField = value;
        }
    }
}

/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://www.litle.com/schema")]
public partial class litleOnlineResponseAuthorizationResponseFraudResult
{

    private string avsResultField;

    private string cardValidationResultField;

    /// <remarks/>
    public string avsResult
    {
        get
        {
            return this.avsResultField;
        }
        set
        {
            this.avsResultField = value;
        }
    }

    /// <remarks/>
    public string cardValidationResult
    {
        get
        {
            return this.cardValidationResultField;
        }
        set
        {
            this.cardValidationResultField = value;
        }
    }
}


/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://www.litle.com/schema")]
public partial class litleOnlineResponseVoidResponse
{

    private string litleTxnIdField;

    private string responseField;

    private string responseTimeField;

    private string postDateField;

    private string messageField;

    private string idField;

    private string reportGroupField;

    /// <remarks/>
    public string litleTxnId
    {
        get
        {
            return this.litleTxnIdField;
        }
        set
        {
            this.litleTxnIdField = value;
        }
    }

    /// <remarks/>
    public string response
    {
        get
        {
            return this.responseField;
        }
        set
        {
            this.responseField = value;
        }
    }

    /// <remarks/>
    public string responseTime
    {
        get
        {
            return this.responseTimeField;
        }
        set
        {
            this.responseTimeField = value;
        }
    }

    /// <remarks/>
    public string postDate
    {
        get
        {
            return this.postDateField;
        }
        set
        {
            this.postDateField = value;
        }
    }

    /// <remarks/>
    public string message
    {
        get
        {
            return this.messageField;
        }
        set
        {
            this.messageField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string id
    {
        get
        {
            return this.idField;
        }
        set
        {
            this.idField = value;
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string reportGroup
    {
        get
        {
            return this.reportGroupField;
        }
        set
        {
            this.reportGroupField = value;
        }
    }
}


/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://www.litle.com/schema")]
[System.Xml.Serialization.XmlRootAttribute(Namespace = "http://www.litle.com/schema", IsNullable = false)]
public partial class NewDataSet
{

    private litleOnlineResponse[] itemsField;

    /// <remarks/>
    [System.Xml.Serialization.XmlElementAttribute("litleOnlineResponse")]
    public litleOnlineResponse[] Items
    {
        get
        {
            return this.itemsField;
        }
        set
        {
            this.itemsField = value;
        }
    }
}
