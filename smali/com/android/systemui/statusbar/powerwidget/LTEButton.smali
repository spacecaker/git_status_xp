.class public Lcom/android/systemui/statusbar/powerwidget/LTEButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "LTEButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->OBSERVED_URIS:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "lte_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleLte"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentPreferredNetworkMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 80
    const/4 v1, -0x1

    .line 82
    .local v1, network:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 48
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 50
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->getCurrentPreferredNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 51
    .local v0, network:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 52
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x7

    if-eq v3, v0, :cond_0

    const/16 v3, 0x9

    if-ne v3, v0, :cond_2

    .line 54
    :cond_0
    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    .line 55
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    .line 56
    const-string v3, "lte_mode"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    const/4 v3, 0x4

    if-eq v3, v0, :cond_3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLteOnGsmMode()I

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    :cond_3
    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    .line 60
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    .line 61
    const-string v3, "lte_mode"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 29
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->getCurrentPreferredNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 30
    .local v0, network:I
    packed-switch v0, :pswitch_data_0

    .line 39
    :pswitch_0
    const v2, 0x7f02007e

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mIcon:I

    .line 40
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    .line 41
    const-string v2, "lte_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    :goto_0
    return-void

    .line 34
    :pswitch_1
    const v2, 0x7f02007f

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mIcon:I

    .line 35
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    .line 36
    const-string v2, "lte_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
