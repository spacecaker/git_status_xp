.class Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final edit:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mEapAnonymous:Landroid/widget/TextView;

.field private mEapCaCert:Landroid/widget/Spinner;

.field private mEapIdentity:Landroid/widget/TextView;

.field private mEapMethod:Landroid/widget/Spinner;

.field private mEapUserCert:Landroid/widget/Spinner;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mPhase2:Landroid/widget/Spinner;

.field private mSecurity:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 87
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    .line 88
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 89
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 90
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 91
    return-void

    .line 90
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 272
    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    return-void
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 392
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, certs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 394
    .local v3, context:Landroid/content/Context;
    const v5, 0x7f080165

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, unspecified:Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 397
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    aput-object v4, v2, v6

    .line 405
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 407
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 408
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 409
    return-void

    .line 399
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 400
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v6

    .line 401
    array-length v5, v2

    invoke-static {v2, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    move-object v2, v1

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 76
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 77
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "keystore://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    .line 81
    .end local v3           #value:Ljava/lang/String;
    :goto_1
    return v5

    .line 76
    .restart local v3       #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #value:Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 81
    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 413
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 416
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 4
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 419
    if-eqz p2, :cond_0

    .line 420
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 421
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 422
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 428
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 421
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 319
    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-nez v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    if-nez v2, :cond_2

    .line 327
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    .line 328
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 329
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v6, :cond_2

    .line 332
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    const v3, 0x7f080164

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 338
    .local v1, wpaModeSpin:Landroid/widget/Spinner;
    if-eqz v1, :cond_4

    .line 339
    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 340
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v6, :cond_4

    .line 342
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 343
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_4

    .line 344
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    invoke-virtual {v1, v4, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 360
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :goto_1
    iget v2, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    .line 361
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 347
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 348
    invoke-virtual {v1, v5, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_1

    .line 349
    :cond_6
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    invoke-virtual {v1, v7, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_1

    .line 355
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_7
    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 364
    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    if-nez v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    .line 368
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    .line 369
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    .line 370
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    .line 371
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    .line 372
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b00fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    .line 374
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v6, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 379
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_4

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    .line 282
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 305
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 301
    return-void
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 11

    .prologue
    const/4 v6, -0x1

    const/16 v10, 0x22

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, ""

    .line 94
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v5, :cond_0

    .line 95
    const/4 v5, 0x0

    .line 188
    :goto_0
    return-object v5

    .line 98
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 100
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v5, :cond_3

    .line 101
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 104
    iput-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 113
    :goto_1
    iget v5, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 114
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b00fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 115
    .local v4, wpaModeSpin:Landroid/widget/Spinner;
    if-eqz v4, :cond_2

    .line 116
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    .local v3, wpaMode:Ljava/lang/String;
    const-string v5, "WPA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 118
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    .line 129
    .end local v3           #wpaMode:Ljava/lang/String;
    .end local v4           #wpaModeSpin:Landroid/widget/Spinner;
    :cond_2
    :goto_2
    iget v5, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    packed-switch v5, :pswitch_data_0

    .line 188
    const/4 v5, 0x0

    goto :goto_0

    .line 105
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v6, :cond_4

    .line 106
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 109
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 119
    .restart local v3       #wpaMode:Ljava/lang/String;
    .restart local v4       #wpaModeSpin:Landroid/widget/Spinner;
    :cond_5
    const-string v5, "WPA2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 120
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 122
    :cond_6
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    .line 123
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 131
    .end local v3           #wpaMode:Ljava/lang/String;
    .end local v4           #wpaModeSpin:Landroid/widget/Spinner;
    :pswitch_0
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    move-object v5, v0

    .line 132
    goto/16 :goto_0

    .line 135
    :pswitch_1
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    .line 136
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    .line 137
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    .line 138
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 139
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 140
    .local v1, length:I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, password:Ljava/lang/String;
    const/16 v5, 0xa

    if-eq v1, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v1, v5, :cond_7

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_9

    :cond_7
    const-string v5, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 144
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v5, v7

    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :cond_8
    :goto_3
    move-object v5, v0

    .line 149
    goto/16 :goto_0

    .line 146
    .restart local v1       #length:I
    .restart local v2       #password:Ljava/lang/String;
    :cond_9
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    goto :goto_3

    .line 152
    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    .line 153
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_a

    .line 154
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .restart local v2       #password:Ljava/lang/String;
    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 156
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v2           #password:Ljava/lang/String;
    :cond_a
    :goto_4
    move-object v5, v0

    .line 161
    goto/16 :goto_0

    .line 158
    .restart local v2       #password:Ljava/lang/String;
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_4

    .line 164
    .end local v2           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 165
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 166
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 168
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-nez v6, :cond_d

    const-string v6, ""

    move-object v6, v8

    :goto_5
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 170
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_e

    const-string v5, ""

    move-object v5, v8

    :goto_6
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 173
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_f

    const-string v5, ""

    move-object v5, v8

    :goto_7
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 176
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_10

    const-string v5, ""

    move-object v5, v8

    :goto_8
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 179
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-nez v6, :cond_11

    const-string v6, ""

    move-object v6, v8

    :goto_9
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 181
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-nez v6, :cond_12

    const-string v6, ""

    move-object v6, v8

    :goto_a
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_c

    .line 184
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    :cond_c
    move-object v5, v0

    .line 186
    goto/16 :goto_0

    .line 168
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 170
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://CACERT_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 173
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://USRCERT_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 176
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://USRPKEY_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    .line 179
    :cond_11
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9

    .line 181
    :cond_12
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_a

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 295
    return-void

    .line 289
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f08016d

    const/4 v12, -0x1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030051

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 194
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 198
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 200
    .local v5, resources:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v9, :cond_2

    .line 201
    const v9, 0x7f08014f

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setTitle(I)V

    .line 202
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b00ed

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b00ee

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    .line 204
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b00ef

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 206
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v12, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x24

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 259
    :cond_0
    :goto_0
    const/4 v9, -0x2

    const v10, 0x7f08016e

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 262
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 267
    :cond_1
    return-void

    .line 210
    :cond_2
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b00ec

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 213
    .local v2, group:Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 214
    .local v7, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v7, :cond_3

    .line 215
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v9, :cond_3

    .line 216
    const v9, 0x7f080159

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 219
    :cond_3
    const v9, 0x7f050013

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, type:[Ljava/lang/String;
    const v9, 0x7f080157

    iget-object v10, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v10, v8, v10

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 222
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v4

    .line 224
    .local v4, level:I
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v9, :cond_5

    .line 226
    if-eq v4, v12, :cond_4

    .line 227
    const v9, 0x7f050017

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, signal:[Ljava/lang/String;
    const v9, 0x7f080158

    aget-object v10, v6, v4

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 231
    .end local v6           #signal:[Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 232
    .local v3, info:Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_5

    .line 233
    const v9, 0x7f08015a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Mbps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 235
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 236
    .local v0, address:I
    if-eqz v0, :cond_5

    .line 237
    const v9, 0x7f08015b

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 243
    .end local v0           #address:I
    .end local v3           #info:Landroid/net/wifi/WifiInfo;
    :cond_5
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v9, v12, :cond_6

    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-eqz v9, :cond_7

    .line 244
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 247
    :cond_7
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-eqz v9, :cond_8

    .line 248
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v12, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 250
    :cond_8
    if-nez v7, :cond_9

    if-eq v4, v12, :cond_9

    .line 251
    const v9, 0x7f08016b

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v12, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 253
    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v9, v12, :cond_0

    .line 254
    const/4 v9, -0x3

    const v10, 0x7f08016c

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 308
    iput p3, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 309
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 310
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 311
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 314
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 298
    return-void
.end method
