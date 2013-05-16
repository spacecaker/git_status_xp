.class public Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "NetworkModeButton.java"


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


# instance fields
.field private mIntendedMode:I

.field private mInternalState:I

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->OBSERVED_URIS:Ljava/util/List;

    .line 23
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "preferred_network_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x63

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mMode:I

    .line 40
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIntendedMode:I

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    .line 43
    const-string v0, "toggleNetworkMode"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static get2G3G(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 157
    const/16 v0, 0x63

    .line 159
    .local v0, state:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 161
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_network_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private networkModeToState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x2

    .line 167
    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 186
    :goto_0
    :pswitch_0
    return v0

    .line 171
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mMode:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 186
    goto :goto_0

    .line 175
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :pswitch_2
    const-string v1, "NetworkModeButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected network mode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    return-object v0
.end method

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
    .line 153
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "networkMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mMode:I

    .line 136
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mMode:I

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIntendedMode:I

    .line 140
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->networkModeToState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    .line 142
    return-void
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v0

    .line 84
    .local v0, currentMode:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, intent:Landroid/content/Intent;
    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 116
    :goto_0
    const/16 v2, -0x64

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mMode:I

    .line 117
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void

    .line 88
    :pswitch_0
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iput v7, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    .line 90
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIntendedMode:I

    goto :goto_0

    .line 93
    :pswitch_1
    if-ne v0, v3, :cond_0

    .line 94
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iput v7, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    .line 96
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIntendedMode:I

    goto :goto_0

    .line 98
    :cond_0
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    .line 100
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIntendedMode:I

    goto :goto_0

    .line 104
    :pswitch_2
    if-eq v0, v3, :cond_1

    if-ne v0, v5, :cond_2

    .line 105
    :cond_1
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    .line 107
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIntendedMode:I

    goto :goto_0

    .line 109
    :cond_2
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    .line 111
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIntendedMode:I

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const v5, 0x7f020068

    const v4, 0x7f020067

    const v3, 0x7f020066

    const/4 v2, 0x2

    .line 47
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->get2G3G(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mMode:I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->networkModeToState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mState:I

    .line 50
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    :pswitch_0
    return-void

    .line 52
    :pswitch_1
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 55
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mMode:I

    if-ne v0, v2, :cond_0

    .line 56
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 58
    :cond_0
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 67
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mInternalState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 68
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIntendedMode:I

    if-ne v0, v2, :cond_1

    .line 69
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 71
    :cond_1
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 74
    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;->mIcon:I

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
