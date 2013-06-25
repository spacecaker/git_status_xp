.class public Lcom/lidroid/systemui/quickpanel/PowerWidget;
.super Landroid/widget/FrameLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;,
        Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    }
.end annotation


# static fields
.field private static final BUTTONS_DEFAULT:Ljava/lang/String; = "toggleWifi|toggleBluetooth|toggleMobileData"

.field public static final BUTTON_DELIMITER:Ljava/lang/String; = "|"

.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

.field private static final LAYOUT_SCROLL_BUTTON_THRESHOLD:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PowerWidget"

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final sPossibleButtons:Ljava/util/HashMap;
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


# instance fields
.field private mAllButtonClickListener:Landroid/view/View$OnClickListener;

.field private mAllButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private final mButtonNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mButtons:Ljava/util/HashMap;
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

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

.field private mScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    const/high16 v1, 0x3f80

    .line 62
    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    .line 75
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleWifi"

    const-class v2, Lcom/lidroid/systemui/quickpanel/WifiButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleGPS"

    const-class v2, Lcom/lidroid/systemui/quickpanel/GPSButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleBluetooth"

    const-class v2, Lcom/lidroid/systemui/quickpanel/BluetoothButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleBrightness"

    const-class v2, Lcom/lidroid/systemui/quickpanel/BrightnessButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleSound"

    const-class v2, Lcom/lidroid/systemui/quickpanel/SoundButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleSync"

    const-class v2, Lcom/lidroid/systemui/quickpanel/SyncButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleWifiAp"

    const-class v2, Lcom/lidroid/systemui/quickpanel/WifiApButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleScreenTimeout"

    const-class v2, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleMobileData"

    const-class v2, Lcom/lidroid/systemui/quickpanel/MobileDataButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleLockScreen"

    const-class v2, Lcom/lidroid/systemui/quickpanel/LockScreenButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleAutoRotate"

    const-class v2, Lcom/lidroid/systemui/quickpanel/AutoRotateButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleAirplane"

    const-class v2, Lcom/lidroid/systemui/quickpanel/AirplaneButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleFlashlight"

    const-class v2, Lcom/lidroid/systemui/quickpanel/FlashlightButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleSleepMode"

    const-class v2, Lcom/lidroid/systemui/quickpanel/SleepButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleScreenshotMode"

    const-class v2, Lcom/lidroid/systemui/quickpanel/ScreenshotButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleMediaPlayPause"

    const-class v2, Lcom/lidroid/systemui/quickpanel/MediaPlayPauseButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleMediaPrevious"

    const-class v2, Lcom/lidroid/systemui/quickpanel/MediaPreviousButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleMediaNext"

    const-class v2, Lcom/lidroid/systemui/quickpanel/MediaNextButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleShutdown"

    const-class v2, Lcom/lidroid/systemui/quickpanel/ShutdownButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleReboot"

    const-class v2, Lcom/lidroid/systemui/quickpanel/RebootButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    .line 108
    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 109
    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    .line 117
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    .line 119
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    .line 123
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    .line 124
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateVisibility()V

    .line 125
    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$1(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->recreateButtonLayout()V

    return-void
.end method

.method static synthetic access$2(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->getAllObservedUris()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateVisibility()V

    return-void
.end method

.method static synthetic access$6(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateScrollbar()V

    return-void
.end method

.method static synthetic access$7(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateHapticFeedbackSetting()V

    return-void
.end method

.method private getAllObservedUris()Ljava/util/List;
    .locals 4
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
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    return-object v0

    .line 294
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 295
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v2

    .line 297
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    .line 298
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 299
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getMergedBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 7

    .prologue
    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    return-object v0

    .line 274
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 275
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    .line 279
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 280
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 282
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private loadButton(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 186
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 206
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 191
    goto :goto_0

    .line 196
    :cond_1
    :try_start_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 197
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setExternalClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mAllButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setExternalLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 206
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "PowerWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading button: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 203
    goto :goto_0
.end method

.method private recreateButtonLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->removeAllViews()V

    .line 234
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 235
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 238
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 251
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    .line 252
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 253
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 254
    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getVerticalScrollbarWidth()I

    move-result v4

    .line 251
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 255
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateScrollbar()V

    .line 257
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    :goto_1
    return-void

    .line 238
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 242
    invoke-virtual {v0, v2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 325
    :cond_0
    return-void
.end method

.method private unloadAllButtons()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 227
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 228
    return-void

    .line 221
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 222
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method private unloadButton(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    return-void
.end method

.method private updateButtonLayoutWidth()V
    .locals 2

    .prologue
    .line 329
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 330
    return-void
.end method

.method private updateHapticFeedbackSetting()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 351
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 353
    const-string v1, "expanded_haptic_feedback"

    .line 352
    invoke-static {v4, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 354
    move-object v0, v2

    check-cast v0, [J

    move-object v1, v0

    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    .line 357
    if-ne v5, v8, :cond_1

    .line 359
    const-string v5, "haptic_feedback_enabled"

    .line 358
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v6

    .line 364
    :goto_0
    if-eqz v5, :cond_4

    .line 366
    const-string v1, "haptic_down_array"

    .line 365
    invoke-static {v4, v1, v2}, Landroid/provider/Settings$System;->getLongArray(Landroid/content/ContentResolver;Ljava/lang/String;[J)[J

    move-result-object v1

    .line 368
    const-string v3, "haptic_long_array"

    .line 367
    invoke-static {v4, v3, v2}, Landroid/provider/Settings$System;->getLongArray(Landroid/content/ContentResolver;Ljava/lang/String;[J)[J

    move-result-object v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 371
    :goto_1
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 374
    return-void

    :cond_0
    move v5, v7

    .line 358
    goto :goto_0

    .line 361
    :cond_1
    if-ne v5, v6, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_0

    .line 371
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 372
    invoke-virtual {p0, v5, v2, v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setHapticFeedback(Z[J[J)V

    goto :goto_2

    :cond_4
    move-object v2, v1

    move-object v1, v3

    goto :goto_1
.end method

.method private updateScrollbar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    const-string v1, "expanded_hide_scrollbar"

    .line 345
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    .line 347
    :goto_1
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 345
    goto :goto_1

    :cond_2
    move v0, v3

    .line 347
    goto :goto_2
.end method

.method private updateVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 334
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 335
    const-string v1, "expanded_view_widget"

    .line 334
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 336
    :goto_0
    if-nez v0, :cond_1

    .line 337
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setVisibility(I)V

    .line 341
    :goto_1
    return-void

    :cond_0
    move v0, v3

    .line 334
    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public destroyWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    const-string v0, "PowerWidget"

    const-string v1, "Clearing any old widget stuffs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->removeAllViews()V

    .line 133
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iput-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->unobserve()V

    .line 140
    iput-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unloadAllButtons()V

    .line 145
    return-void
.end method

.method public setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 309
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    return-void

    .line 309
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 310
    invoke-virtual {p0, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setExternalClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mAllButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 316
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    return-void

    .line 316
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 317
    invoke-virtual {p0, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setExternalLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public setupWidget()V
    .locals 7

    .prologue
    const-string v6, "PowerWidget"

    .line 149
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->destroyWidget()V

    .line 151
    const-string v0, "PowerWidget"

    const-string v0, "Setting up widget"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_widget_buttons"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    const-string v0, "PowerWidget"

    const-string v0, "Default buttons being loaded"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "toggleWifi|toggleBluetooth|toggleGPS|toggleSound|toggleAutoRotate"

    .line 158
    :cond_0
    const-string v1, "PowerWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Button list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->recreateButtonLayout()V

    .line 168
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateHapticFeedbackSetting()V

    .line 171
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupBroadcastReceiver()V

    .line 172
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->getMergedBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 174
    const-string v1, "android.settings.SETTINGS_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    .line 181
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->observe()V

    .line 182
    return-void

    .line 160
    :cond_1
    aget-object v3, v0, v2

    .line 161
    invoke-direct {p0, v3}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->loadButton(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_2
    const-string v4, "PowerWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error setting up button: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateAllButtons()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    return-void

    .line 266
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 267
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->update(Landroid/content/Context;)V

    goto :goto_0
.end method
