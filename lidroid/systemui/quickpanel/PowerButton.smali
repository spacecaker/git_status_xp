.class public abstract Lcom/lidroid/systemui/quickpanel/PowerButton;
.super Ljava/lang/Object;
.source "PowerButton.java"


# static fields
.field private static final BUTTONS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lidroid/systemui/quickpanel/PowerButton;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final BUTTONS_LOADED:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/systemui/quickpanel/PowerButton;",
            ">;"
        }
    .end annotation
.end field

.field private static GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener; = null

.field private static GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener; = null

.field private static final MASK_MODE:Landroid/graphics/PorterDuff$Mode; = null

.field public static final STATE_DISABLED:I = 0x2

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_INTERMEDIATE:I = 0x5

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x3

.field public static final STATE_UNKNOWN:I = 0x6

.field public static final TAG:Ljava/lang/String; = "PowerButton"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field protected mIcon:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mState:I

.field protected mStatusIcon:I

.field protected mType:Ljava/lang/String;

.field protected mView:Landroid/view/View;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->MASK_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    .line 44
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifi"

    const-class v2, Lcom/lidroid/systemui/quickpanel/WifiButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifiAp"

    const-class v2, Lcom/lidroid/systemui/quickpanel/WifiApButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMobileData"

    const-class v2, Lcom/lidroid/systemui/quickpanel/MobileDataButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleGPS"

    const-class v2, Lcom/lidroid/systemui/quickpanel/GPSButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBluetooth"

    const-class v2, Lcom/lidroid/systemui/quickpanel/BluetoothButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSound"

    const-class v2, Lcom/lidroid/systemui/quickpanel/SoundButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAutoRotate"

    const-class v2, Lcom/lidroid/systemui/quickpanel/AutoRotateButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSync"

    const-class v2, Lcom/lidroid/systemui/quickpanel/SyncButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBrightness"

    const-class v2, Lcom/lidroid/systemui/quickpanel/BrightnessButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleScreenTimeout"

    const-class v2, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleLockScreen"

    const-class v2, Lcom/lidroid/systemui/quickpanel/LockScreenButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleLockScreenAction"

    const-class v2, Lcom/lidroid/systemui/quickpanel/LockScreenActionButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAirplane"

    const-class v2, Lcom/lidroid/systemui/quickpanel/AirplaneButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleFlashlight"

    const-class v2, Lcom/lidroid/systemui/quickpanel/FlashlightButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleReboot"

    const-class v2, Lcom/lidroid/systemui/quickpanel/RebootButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleShutdown"

    const-class v2, Lcom/lidroid/systemui/quickpanel/ShutdownButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleUSBDebugging"

    const-class v2, Lcom/lidroid/systemui/quickpanel/USBDebuggingButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleUSBConnectionMode"

    const-class v2, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleStayAwakePlugged"

    const-class v2, Lcom/lidroid/systemui/quickpanel/StayAwakePluggedButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBatteryInfo"

    const-class v2, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    .line 80
    sput-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 83
    sput-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mType:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerButton$1;-><init>(Lcom/lidroid/systemui/quickpanel/PowerButton;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerButton$2;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerButton$2;-><init>(Lcom/lidroid/systemui/quickpanel/PowerButton;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    .line 193
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerButton$3;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerButton$3;-><init>(Lcom/lidroid/systemui/quickpanel/PowerButton;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/systemui/quickpanel/PowerButton;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateImageView(II)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public static getAllBroadcastIntentFilters()Landroid/content/IntentFilter;
    .locals 9

    .prologue
    .line 272
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v2, filter:Landroid/content/IntentFilter;
    sget-object v8, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v8

    .line 275
    :try_start_0
    sget-object v7, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 276
    .local v1, button:Lcom/lidroid/systemui/quickpanel/PowerButton;
    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    .line 279
    .local v6, tmp:Landroid/content/IntentFilter;
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    .line 280
    .local v5, num:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 281
    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 283
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #button:Lcom/lidroid/systemui/quickpanel/PowerButton;
    .end local v3           #i:I
    .end local v5           #num:I
    .end local v6           #tmp:Landroid/content/IntentFilter;
    :cond_2
    monitor-exit v8

    .line 290
    return-object v2

    .line 287
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public static getAllObservedUris()Ljava/util/List;
    .locals 8
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
    .line 295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v5, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v7, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v7

    .line 298
    :try_start_0
    sget-object v6, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 299
    .local v0, button:Lcom/lidroid/systemui/quickpanel/PowerButton;
    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v3

    .line 301
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 302
    .local v4, uri:Landroid/net/Uri;
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 303
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v0           #button:Lcom/lidroid/systemui/quickpanel/PowerButton;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tmp:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    .end local v4           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    return-object v5
.end method

.method protected static getLoadedButton(Ljava/lang/String;)Lcom/lidroid/systemui/quickpanel/PowerButton;
    .locals 2
    .parameter "key"

    .prologue
    .line 345
    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v1

    .line 346
    :try_start_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    monitor-exit v1

    .line 349
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static handleOnChangeUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 327
    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 328
    :try_start_0
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 329
    .local v0, button:Lcom/lidroid/systemui/quickpanel/PowerButton;
    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->onChangeUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 333
    .end local v0           #button:Lcom/lidroid/systemui/quickpanel/PowerButton;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    return-void
.end method

.method public static handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, action:Ljava/lang/String;
    sget-object v4, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v4

    .line 317
    :try_start_0
    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 319
    .local v1, button:Lcom/lidroid/systemui/quickpanel/PowerButton;
    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {v1, p0, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 323
    .end local v1           #button:Lcom/lidroid/systemui/quickpanel/PowerButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    return-void
.end method

.method public static loadButton(Ljava/lang/String;Landroid/view/View;)Z
    .locals 6
    .parameter "key"
    .parameter "view"

    .prologue
    .line 213
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 214
    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 215
    :try_start_0
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-virtual {v2, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    .line 230
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    const/4 v2, 0x1

    .line 233
    :goto_1
    return v2

    .line 221
    :cond_0
    :try_start_1
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 223
    .local v1, pb:Lcom/lidroid/systemui/quickpanel/PowerButton;
    invoke-virtual {v1, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    .line 225
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    .end local v1           #pb:Lcom/lidroid/systemui/quickpanel/PowerButton;
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "PowerButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading button: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 230
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 233
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 337
    sput-object p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 338
    return-void
.end method

.method public static setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 341
    sput-object p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    .line 342
    return-void
.end method

.method public static unloadAllButtons()V
    .locals 4

    .prologue
    .line 250
    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 252
    :try_start_0
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 253
    .local v1, pb:Lcom/lidroid/systemui/quickpanel/PowerButton;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    goto :goto_0

    .line 258
    .end local v1           #pb:Lcom/lidroid/systemui/quickpanel/PowerButton;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 257
    :cond_0
    :try_start_1
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 258
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    return-void
.end method

.method public static unloadButton(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 238
    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v1

    .line 240
    :try_start_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    .line 244
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    monitor-exit v1

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateAllButtons()V
    .locals 4

    .prologue
    .line 262
    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    .line 264
    :try_start_0
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 265
    .local v1, pb:Lcom/lidroid/systemui/quickpanel/PowerButton;
    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->update()V

    goto :goto_0

    .line 267
    .end local v1           #pb:Lcom/lidroid/systemui/quickpanel/PowerButton;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    return-void
.end method

.method private updateImageView(II)V
    .locals 2
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 166
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .local v0, imageIcon:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    return-void
.end method

.method private updateImageView(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "id"
    .parameter "resDraw"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 172
    .local v0, imageIcon:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

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
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected abstract getText()I
.end method

.method protected abstract handleLongClick()Z
.end method

.method protected onChange()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected onChangeUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 142
    return-void
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    return-void
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected abstract toggleState()V
.end method

.method protected update()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateState()V

    .line 126
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateView()V

    .line 127
    return-void
.end method

.method protected abstract updateState()V
.end method

.method protected updateText()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 118
    const v0, 0x7f0c00cb

    .line 119
    .local v0, buttonText:I
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getText()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    .end local v0           #buttonText:I
    .end local v1           #text:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method protected updateView()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    return-void
.end method
