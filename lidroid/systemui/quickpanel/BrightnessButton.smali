.class public Lcom/lidroid/systemui/quickpanel/BrightnessButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "BrightnessButton.java"


# static fields
.field private static final AUTO_BACKLIGHT:I = -0x1

.field private static final CM_MODE_AUTO_LOW_MAX:I = 0x2

.field private static final CM_MODE_AUTO_MIN_DEF_MAX:I = 0x0

.field private static final CM_MODE_AUTO_MIN_LOW_MID_HIGH_MAX:I = 0x1

.field private static final CM_MODE_MIN_MAX:I = 0x3

.field private static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final HIGH_BACKLIGHT:I = 0xbf

.field private static final LOW_BACKLIGHT:I = 0x3f

.field private static final MAX_BACKLIGHT:I = 0xff

.field private static final MID_BACKLIGHT:I = 0x7f

.field private static final MIN_BACKLIGHT:I = 0x1e

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

.field private static SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    .line 49
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleBrightness"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getBrightnessState(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 190
    .local v0, brightness:I
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    .line 192
    .local v1, currentMode:I
    const/16 v6, 0x3f

    if-ge v0, v6, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v2

    .line 194
    :cond_1
    const/16 v6, 0x66

    if-lt v0, v6, :cond_0

    .line 196
    const/16 v6, 0x7f

    if-ge v0, v6, :cond_2

    .line 197
    if-eq v1, v5, :cond_0

    move v2, v3

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    const/16 v2, 0xbf

    if-ge v0, v2, :cond_4

    .line 203
    if-ne v1, v5, :cond_3

    move v2, v3

    .line 204
    goto :goto_0

    :cond_3
    move v2, v4

    .line 206
    goto :goto_0

    .line 208
    :cond_4
    const/16 v2, 0xff

    if-ge v0, v2, :cond_5

    move v2, v4

    .line 209
    goto :goto_0

    :cond_5
    move v2, v5

    .line 211
    goto :goto_0
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getMinBacklight(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/16 v0, 0x1e

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "light_sensor_custom"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "light_screen_dim"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 132
    :cond_0
    return v0
.end method

.method private static getNextBrightnessValue(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    const/16 v4, 0x66

    const/4 v9, 0x3

    const/16 v2, 0x3f

    const/4 v8, 0x2

    const/16 v3, 0xff

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, brightness:I
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    .line 141
    .local v1, currentMode:I
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    if-ne v1, v8, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v2

    .line 145
    :cond_1
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    .line 147
    :cond_2
    if-ge v0, v2, :cond_4

    .line 148
    if-eq v1, v8, :cond_0

    .line 150
    if-ne v1, v9, :cond_3

    move v2, v3

    .line 151
    goto :goto_0

    :cond_3
    move v2, v4

    .line 153
    goto :goto_0

    .line 155
    :cond_4
    if-ge v0, v4, :cond_8

    .line 156
    if-nez v1, :cond_5

    move v2, v4

    .line 157
    goto :goto_0

    .line 158
    :cond_5
    if-eq v1, v8, :cond_6

    if-ne v1, v9, :cond_7

    :cond_6
    move v2, v3

    .line 159
    goto :goto_0

    .line 161
    :cond_7
    const/16 v2, 0x7f

    goto :goto_0

    .line 163
    :cond_8
    const/16 v4, 0x7f

    if-ge v0, v4, :cond_a

    .line 164
    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 165
    const/16 v2, 0x7f

    goto :goto_0

    :cond_9
    move v2, v3

    .line 167
    goto :goto_0

    .line 169
    :cond_a
    const/16 v4, 0xbf

    if-ge v0, v4, :cond_c

    .line 170
    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 171
    const/16 v2, 0xbf

    goto :goto_0

    :cond_b
    move v2, v3

    .line 173
    goto :goto_0

    .line 175
    :cond_c
    if-ge v0, v3, :cond_d

    move v2, v3

    .line 176
    goto :goto_0

    .line 177
    :cond_d
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eq v1, v9, :cond_e

    .line 178
    const/4 v2, -0x1

    goto :goto_0

    .line 179
    :cond_e
    if-eq v1, v8, :cond_0

    .line 182
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method private static isAutomaticModeSupported(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 216
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    .line 225
    :cond_0
    :goto_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 221
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static isBrightnessSetToAutomatic(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 230
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 232
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 236
    .local v0, brightnessMode:I
    if-ne v0, v3, :cond_0

    .line 242
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v4

    .line 236
    goto :goto_0

    .line 238
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 239
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PowerWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 242
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
    .line 123
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 252
    const v0, 0x7f0900f6

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    .prologue
    .line 85
    iget-object v5, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 87
    .local v2, context:Landroid/content/Context;
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 89
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_0

    .line 90
    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getNextBrightnessValue(Landroid/content/Context;)I

    move-result v0

    .line 91
    .local v0, brightness:I
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 92
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 93
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    .end local v0           #brightness:I
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v0       #brightness:I
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_1
    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    :cond_2
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 103
    const-string v5, "screen_brightness"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v0           #brightness:I
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 108
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "PowerWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateState()V
    .locals 5

    .prologue
    const v4, 0x7f020143

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 57
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const v1, 0x7f020140

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 60
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    .line 81
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getBrightnessState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 76
    :pswitch_0
    const v1, 0x7f020142

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 77
    const/4 v1, 0x2

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    .line 64
    :pswitch_1
    iput v4, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 65
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    .line 68
    :pswitch_2
    iput v4, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 69
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    .line 72
    :pswitch_3
    const v1, 0x7f020141

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    .line 73
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
