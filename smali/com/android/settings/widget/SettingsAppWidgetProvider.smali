.class public Lcom/android/settings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingsAppWidgetProvider$1;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static isAirplaneModeOn:I

.field private static final sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private static final sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 54
    sput-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 77
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 83
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 89
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 102
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 103
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 104
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 105
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 107
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->isAirplaneModeOn:I

    return-void

    .line 77
    :array_0
    .array-data 0x4
        0x11t 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
    .end array-data

    .line 83
    :array_1
    .array-data 0x4
        0xet 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data

    .line 89
    :array_2
    .array-data 0x4
        0x14t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 531
    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/bluetooth/LocalBluetoothManager;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static synthetic access$900(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 624
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03004d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 626
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b00dd

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 628
    const v1, 0x7f0b00e9

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 631
    const v1, 0x7f0b00e6

    const/4 v2, 0x2

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 634
    const v1, 0x7f0b00e3

    const/4 v2, 0x3

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 636
    const v1, 0x7f0b00e0

    const/4 v2, 0x4

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 640
    invoke-static {v0, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 641
    return-object v0
.end method

.method private static getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 779
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 781
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private static getBrightness(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 792
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 794
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 795
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 797
    .local v0, brightness:I
    const/16 v3, 0x64

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    .line 802
    .end local v0           #brightness:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightness:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v6

    .line 797
    goto :goto_0

    .line 799
    .end local v0           #brightness:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 800
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v6

    .line 802
    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 813
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 815
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 816
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 818
    .local v0, brightnessMode:I
    if-ne v0, v5, :cond_0

    move v3, v5

    .line 823
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v6

    .line 818
    goto :goto_0

    .line 820
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 821
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v6

    .line 823
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 704
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 705
    const-class v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 706
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 708
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 710
    return-object v0
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-string v8, "toggleBrightness: "

    const-string v5, "screen_brightness_mode"

    const-string v5, "screen_brightness"

    const-string v7, "SettingsAppWidgetProvider"

    .line 833
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 835
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 836
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 837
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 839
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 841
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d0006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 843
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 849
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 850
    const/16 v0, 0x1e

    .line 851
    const/4 v1, 0x0

    .line 861
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d0006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 864
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 871
    :goto_1
    if-nez v1, :cond_1

    .line 872
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 873
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 881
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 852
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_2
    const/16 v5, 0x66

    if-ge v0, v5, :cond_3

    .line 853
    const/16 v0, 0x66

    goto :goto_0

    .line 854
    :cond_3
    const/16 v5, 0xff

    if-ge v0, v5, :cond_4

    .line 855
    const/16 v0, 0xff

    goto :goto_0

    .line 857
    :cond_4
    const/4 v1, 0x1

    .line 858
    const/16 v0, 0x1e

    goto :goto_0

    .line 869
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 876
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 877
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "SettingsAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleBrightness: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 878
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 879
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "SettingsAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleBrightness: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 7
    .parameter "views"
    .parameter "context"

    .prologue
    const v6, 0x7f020015

    const/4 v5, 0x1

    const v4, 0x7f0b00eb

    const v3, 0x7f0b00ea

    .line 663
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 665
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->isAirplaneModeOn:I

    .line 668
    sget v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->isAirplaneModeOn:I

    if-ne v0, v5, :cond_0

    .line 669
    const v0, 0x7f0b00e1

    const v1, 0x7f020019

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 670
    const v0, 0x7f0b00e2

    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    aget v1, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 674
    :goto_0
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 675
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 677
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    const v0, 0x7f02001b

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 680
    invoke-virtual {p0, v4, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 693
    :goto_1
    return-void

    .line 672
    :cond_0
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 682
    :cond_1
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    const v0, 0x7f02001e

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 685
    invoke-virtual {p0, v4, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 688
    :cond_2
    const v0, 0x7f02001d

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 690
    const v0, 0x7f020012

    invoke-virtual {p0, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 650
    const/4 v2, -0x1

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 652
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 653
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 654
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 612
    const-class v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    .line 613
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 614
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 618
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 603
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 604
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 608
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "android.settings.BRIGHTNESS_CHANGED"

    .line 721
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 722
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 724
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 769
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 770
    :cond_1
    return-void

    .line 725
    :cond_2
    const-string v3, "android.settings.BRIGHTNESS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 726
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 727
    :cond_3
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 728
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 729
    :cond_4
    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 730
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 731
    :cond_5
    sget-object v3, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 733
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 734
    :cond_6
    const-string v3, "android.settings.BRIGHTNESS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 735
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 736
    :cond_7
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 738
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 739
    .local v1, buttonId:I
    if-nez v1, :cond_8

    .line 740
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 741
    :cond_8
    if-ne v1, v7, :cond_9

    .line 742
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 743
    :cond_9
    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 744
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 745
    :cond_a
    const/4 v3, 0x3

    if-ne v1, v3, :cond_b

    .line 746
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 747
    :cond_b
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 748
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirplaneModeOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/widget/SettingsAppWidgetProvider;->isAirplaneModeOn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->isAirplaneModeOn:I

    .line 753
    sget v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->isAirplaneModeOn:I

    if-ne v3, v7, :cond_c

    .line 754
    const v3, 0x7f08014b

    invoke-static {p1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 757
    :cond_c
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 594
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 596
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 597
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_0
    return-void
.end method
