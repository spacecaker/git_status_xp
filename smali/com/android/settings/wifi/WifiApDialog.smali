.class Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityType:I

.field private mSsid:Landroid/widget/EditText;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 74
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 76
    if-eqz p3, :cond_0

    .line 77
    invoke-static {p3}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 78
    :cond_0
    return-void
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f0b00f0

    .line 239
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 163
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 224
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 220
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 90
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 92
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    packed-switch v2, :pswitch_data_0

    .line 106
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 94
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    move-object v2, v0

    .line 95
    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 99
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v1           #password:Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 104
    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSecuritySpinner()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 176
    return-void

    .line 170
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03004e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 112
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 114
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f080188

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 121
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 123
    const/4 v2, -0x1

    const v3, 0x7f08016d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 124
    const/4 v2, -0x2

    const v3, 0x7f08016e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    packed-switch v2, :pswitch_data_0

    .line 143
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 154
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 158
    return-void

    .line 131
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 135
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 140
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const v3, 0x7f08018a

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 227
    if-nez p3, :cond_0

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 231
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 233
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 236
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 179
    const/4 v4, 0x0

    .local v4, ssidLength:I
    const/4 v3, 0x0

    .local v3, pwdLength:I
    const/4 v6, 0x0

    .line 180
    .local v6, testLength:I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, SsidCheck:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, PwdCheck:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v4, v7

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v3, v7

    .line 186
    const/16 v7, 0x20

    if-le v4, v7, :cond_0

    .line 187
    const-string v7, "WifiApDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSID length too long : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v2, 0x1

    .line 190
    .local v2, i:I
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, test:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v6, v7

    .line 193
    const/16 v7, 0x20

    if-le v6, v7, :cond_2

    .line 194
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v8, 0x0

    const/4 v9, 0x1

    sub-int v9, v2, v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 201
    .end local v2           #i:I
    .end local v5           #test:Ljava/lang/String;
    :cond_0
    const/16 v7, 0x3f

    if-le v3, v7, :cond_1

    .line 202
    const-string v7, "WifiApDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PWD length too long : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v2, 0x1

    .line 205
    .restart local v2       #i:I
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 206
    .restart local v5       #test:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v6, v7

    .line 208
    const/16 v7, 0x3f

    if-le v6, v7, :cond_3

    .line 209
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v8, 0x0

    const/4 v9, 0x1

    sub-int v9, v2, v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 215
    .end local v2           #i:I
    .end local v5           #test:Ljava/lang/String;
    :cond_1
    const-string v7, "WifiApDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSID length : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v7, "WifiApDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PWD length : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 189
    .restart local v2       #i:I
    .restart local v5       #test:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 204
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
