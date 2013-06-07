.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static checkDialog:I


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field private mSignal:Landroid/widget/ImageView;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field final networkId:I

.field final security:I

.field final ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 39
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    .line 48
    sput v2, Lcom/android/settings/wifi/AccessPoint;->checkDialog:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 108
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/AccessPoint;->checkDialog:I

    .line 114
    :goto_0
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 115
    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 117
    iget v0, p2, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 118
    return-void

    .line 110
    :cond_0
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 111
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/wifi/AccessPoint;->checkDialog:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 94
    :goto_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 95
    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 96
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 97
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 98
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 99
    return-void

    .line 91
    :cond_0
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const-string v2, "\""

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const/4 v0, 0x3

    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "config"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 69
    :goto_0
    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 240
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 266
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 244
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 246
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v4, :cond_1

    .line 247
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v4}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_1
    const/4 v2, 0x0

    .line 250
    .local v2, status:Ljava/lang/String;
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_3

    .line 251
    const v4, 0x7f080168

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_5

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_2

    .line 253
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v4, v7, :cond_4

    const v4, 0x7f080167

    :goto_2
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const v4, 0x7f080166

    goto :goto_2

    .line 260
    :cond_5
    if-nez v2, :cond_6

    const v4, 0x7f080169

    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, format:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, type:[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v6, v3, v6

    aput-object v6, v4, v5

    aput-object v2, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    .end local v1           #format:Ljava/lang/String;
    .end local v3           #type:[Ljava/lang/String;
    :cond_6
    const v4, 0x7f08016a

    goto :goto_3
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 228
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    sub-int v1, v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 230
    sub-int v1, v0, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 152
    instance-of v3, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_0

    move v3, v6

    .line 174
    :goto_0
    return v3

    .line 155
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    move-object v2, v0

    .line 157
    .local v2, other:Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, v2, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v3, v4, :cond_2

    .line 158
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_0

    .line 161
    :cond_2
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, v2, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v3, v4

    if-gez v3, :cond_4

    .line 162
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_0

    .line 165
    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget v4, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v3, v4

    if-gez v3, :cond_6

    .line 166
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v5, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    move v3, v6

    goto :goto_0

    .line 169
    :cond_6
    iget v3, v2, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    .line 170
    .local v1, difference:I
    if-eqz v1, :cond_7

    move v3, v1

    .line 171
    goto :goto_0

    .line 174
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 209
    const/4 v0, -0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 123
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    .line 124
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSummaryText:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/android/settings/wifi/AccessPoint;->checkDialog:I

    if-ne v0, v3, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    const v0, 0x7f0b0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    .line 139
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 147
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 148
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, reorder:Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 191
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 192
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 193
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 194
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 195
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 202
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 205
    :cond_1
    return-void

    .line 191
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 198
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 199
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .parameter "result"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 180
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 183
    :cond_0
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
