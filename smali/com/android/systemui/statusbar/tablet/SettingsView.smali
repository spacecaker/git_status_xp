.class public Lcom/android/systemui/statusbar/tablet/SettingsView;
.super Landroid/widget/LinearLayout;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;,
        Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BUTTONS_DEFAULT:Ljava/lang/String;

.field private static final KEY_TOGGLES:[Ljava/lang/String;


# instance fields
.field mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

.field mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private mContext:Landroid/content/Context;

.field mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

.field mFlashLight:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field mGps:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mHandler:Landroid/os/Handler;

.field mMobileData:Lcom/android/systemui/statusbar/policy/MobileDataController;

.field mNetworkMode:Lcom/android/systemui/statusbar/policy/NetworkModeController;

.field mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

.field mSound:Lcom/android/systemui/statusbar/policy/SoundController;

.field private mToggleContainer:Ljava/lang/String;

.field private mToggles:[Ljava/lang/String;

.field mWifi:Lcom/android/systemui/statusbar/policy/WifiController;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_airplane_toggle"

    aput-object v1, v0, v3

    const-string v1, "pref_rotate_toggle"

    aput-object v1, v0, v4

    const-string v1, "pref_bluetooth_toggle"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "pref_gps_toggle"

    aput-object v2, v0, v1

    const-string v1, "pref_wifi_toggle"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "pref_flashlight_toggle"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_mobile_data_toggle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_network_mode_toggle"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_sound_toggle"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->BUTTONS_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    .line 127
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/tablet/SettingsView;Landroid/os/Handler;)V

    .line 129
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;->observe()V

    .line 130
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/tablet/SettingsView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    return-object p1
.end method

.method private addToggle([ILjava/lang/String;)V
    .locals 9
    .parameter "res"
    .parameter "name"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 167
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001a

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 168
    .local v3, toggle:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/tablet/SettingsView;->addView(Landroid/view/View;I)V

    .line 170
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 171
    .local v1, icon:Landroid/widget/ImageView;
    aget v4, p1, v6

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 173
    .local v2, label:Landroid/widget/TextView;
    aget v4, p1, v7

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 174
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 176
    .local v0, checkbox:Landroid/widget/Switch;
    new-instance v4, Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;

    aget v5, p1, v8

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;-><init>(Lcom/android/systemui/statusbar/tablet/SettingsView;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->setToggleController(Ljava/lang/String;Landroid/widget/CompoundButton;)V

    .line 180
    return-void
.end method

.method private clearToggleControllers()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    .line 198
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    .line 199
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 200
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mFlashLight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 201
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mGps:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 202
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mMobileData:Lcom/android/systemui/statusbar/policy/MobileDataController;

    .line 203
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mNetworkMode:Lcom/android/systemui/statusbar/policy/NetworkModeController;

    .line 204
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mSound:Lcom/android/systemui/statusbar/policy/SoundController;

    .line 205
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mWifi:Lcom/android/systemui/statusbar/policy/WifiController;

    .line 206
    return-void
.end method

.method private clearToggles()V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->removeView(Landroid/view/View;)V

    .line 148
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 153
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getResourcesById(Ljava/lang/String;)[I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 230
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 249
    :goto_0
    return-object v0

    .line 232
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 234
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    goto :goto_0

    .line 236
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    goto :goto_0

    .line 238
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    goto :goto_0

    .line 240
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 241
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    goto :goto_0

    .line 242
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 243
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    goto :goto_0

    .line 244
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    goto :goto_0

    .line 246
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 247
    new-array v0, v2, [I

    fill-array-data v0, :array_8

    goto/16 :goto_0

    .line 249
    :cond_8
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    goto/16 :goto_0

    .line 231
    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x8t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 233
    :array_1
    .array-data 0x4
        0x38t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 235
    :array_2
    .array-data 0x4
        0xb8t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x8t 0x7ft
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 237
    :array_3
    .array-data 0x4
        0x79t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x8t 0x7ft
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 239
    :array_4
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x8t 0x7ft
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 241
    :array_5
    .array-data 0x4
        0x77t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x8t 0x7ft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 243
    :array_6
    .array-data 0x4
        0x75t 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x8t 0x7ft
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 245
    :array_7
    .array-data 0x4
        0x67t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x8t 0x7ft
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 247
    :array_8
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x8t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 249
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private onClickSettings()V
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 311
    return-void
.end method

.method private onClickToggle(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/high16 v4, 0x1000

    .line 270
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    .line 303
    return-void

    .line 272
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 276
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "net.cactii.flash2"

    const-string v2, "net.cactii.flash2.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 290
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SOUND_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setToggleController(Ljava/lang/String;Landroid/widget/CompoundButton;)V
    .locals 2
    .parameter "id"
    .parameter "checkbox"

    .prologue
    .line 209
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    new-instance v0, Lcom/android/systemui/statusbar/policy/AutoRotateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/AutoRotateController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    goto :goto_0

    .line 213
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    goto :goto_0

    .line 215
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mGps:Lcom/android/systemui/statusbar/policy/LocationController;

    goto :goto_0

    .line 217
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/WifiController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mWifi:Lcom/android/systemui/statusbar/policy/WifiController;

    goto :goto_0

    .line 219
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mFlashLight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    goto :goto_0

    .line 221
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/MobileDataController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mMobileData:Lcom/android/systemui/statusbar/policy/MobileDataController;

    goto :goto_0

    .line 223
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/NetworkModeController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mNetworkMode:Lcom/android/systemui/statusbar/policy/NetworkModeController;

    goto/16 :goto_0

    .line 225
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->KEY_TOGGLES:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/android/systemui/statusbar/policy/SoundController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/SoundController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mSound:Lcom/android/systemui/statusbar/policy/SoundController;

    goto/16 :goto_0
.end method

.method private updateToggles()V
    .locals 6

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->clearToggleControllers()V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->clearToggles()V

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggles:[Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggles:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 160
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggles:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, mToggleName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getResourcesById(Ljava/lang/String;)[I

    move-result-object v2

    .line 162
    .local v2, resources:[I
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->addToggle([ILjava/lang/String;)V

    .line 159
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 164
    .end local v1           #mToggleName:Ljava/lang/String;
    .end local v2           #resources:[I
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e008e

    if-ne v1, v2, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickSettings()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;

    if-eqz v1, :cond_0

    .line 262
    check-cast v0, Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;

    .end local v0           #tag:Ljava/lang/Object;
    iget v1, v0, Lcom/android/systemui/statusbar/tablet/SettingsView$ButtonTag;->toggleId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickToggle(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->release()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mGps:Lcom/android/systemui/statusbar/policy/LocationController;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mGps:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->release()V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mSound:Lcom/android/systemui/statusbar/policy/SoundController;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mSound:Lcom/android/systemui/statusbar/policy/SoundController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SoundController;->release()V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->release()V

    .line 193
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 136
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    const v0, 0x7f0e008a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 137
    new-instance v1, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mContext:Landroid/content/Context;

    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->BUTTONS_DEFAULT:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;

    const-string v1, "no_toggles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->updateToggles()V

    .line 144
    :cond_1
    const v0, 0x7f0e008e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method
