.class public Lcom/lidroid/systemui/quickpanel/PowerWidget;
.super Landroid/widget/FrameLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;,
        Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

.field private static final TAG:Ljava/lang/String; = "PowerWidget"

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

.field private LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

.field private mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 55
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x6

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

    .line 69
    const/16 v0, 0x8

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    .line 84
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

    .line 90
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$200(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->animateCollapse()V

    return-void
.end method

.method private animateCollapse()V
    .locals 3

    .prologue
    .line 342
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 343
    .local v0, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 344
    return-void
.end method

.method public static getView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/lidroid/systemui/quickpanel/PowerWidget;
    .locals 2
    .parameter "context"
    .parameter "root"

    .prologue
    .line 347
    const v1, 0x7f030033

    invoke-static {p0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;

    .line 348
    .local v0, widget:Lcom/lidroid/systemui/quickpanel/PowerWidget;
    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    .line 350
    return-object v0
.end method

.method private needScrollBar(I)Z
    .locals 5
    .parameter "buttonCount"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 251
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 252
    iget v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

    if-le p1, v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 252
    goto :goto_0

    .line 255
    :cond_2
    iget v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

    if-gt p1, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private observeAllObserver()V
    .locals 3

    .prologue
    .line 215
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    .line 216
    .local v1, observer:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->observe()V

    goto :goto_0

    .line 217
    .end local v1           #observer:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    :cond_0
    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Lcom/lidroid/systemui/quickpanel/PowerWidget$1;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 236
    :cond_0
    return-void
.end method

.method private setupSettingsObserver()V
    .locals 6

    .prologue
    .line 199
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 201
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_haptic_feedback"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_widget_buttons"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getAllObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 210
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private unobserveAllObserver()V
    .locals 3

    .prologue
    .line 220
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    .line 221
    .local v1, observer:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->unobserve()V

    goto :goto_0

    .line 222
    .end local v1           #observer:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    :cond_0
    return-void
.end method

.method private updateButtonLayoutWidth()V
    .locals 4

    .prologue
    .line 240
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 241
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 242
    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public destroyWidget()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "PowerWidget"

    const-string v1, "Clearing any old widget stuffs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->removeAllViews()V

    .line 99
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 106
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    :cond_1
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->unloadAllButtons()V

    .line 111
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 312
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$1;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget$1;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$2;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget$2;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 327
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 333
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 338
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    return-void
.end method

.method public setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 225
    invoke-static {p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method

.method public setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 229
    invoke-static {p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 230
    return-void
.end method

.method public setupWidget()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 114
    const-string v9, "PowerWidget"

    const-string v10, "Clearing any old widget stuffs"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->removeAllViews()V

    .line 119
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v9, :cond_0

    .line 120
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 126
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->unloadAllButtons()V

    .line 128
    const-string v9, "PowerWidget"

    const-string v10, "Setting up widget"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "expanded_widget_buttons"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, buttons:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 132
    const-string v9, "PowerWidget"

    const-string v10, "Default buttons being loaded"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v4, "toggleWifi|toggleWifiAp|toggleBluetooth|toggleGPS|toggleNfc|toggleMobileData|toggleBrightness|toggleAirplane|toggleSound|toggleAutoRotate|toggleScreenTimeout|toggleReboot|toggleShutdown"

    .line 135
    :cond_1
    const-string v9, "PowerWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Button list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    .local v8, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, buttonCount:I
    const-string v9, "\\|"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v1, v0, v6

    .line 144
    .local v1, button:Ljava/lang/String;
    const-string v9, "PowerWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting up button: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030032

    invoke-virtual {v9, v10, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 148
    .local v3, buttonView:Landroid/view/View;
    invoke-static {v1, v3}, Lcom/lidroid/systemui/quickpanel/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 150
    sget-object v9, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 143
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 153
    :cond_2
    const-string v9, "PowerWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error setting up button: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    .end local v1           #button:Ljava/lang/String;
    .end local v3           #buttonView:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v2}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->needScrollBar(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 168
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030034

    invoke-virtual {v9, v10, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/HorizontalScrollView;

    iput-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 170
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v11

    iget-object v12, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v12}, Landroid/widget/HorizontalScrollView;->getVerticalScrollbarWidth()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 171
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9, v8, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v9, v10}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :goto_2
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupBroadcastReceiver()V

    .line 180
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getAllBroadcastIntentFilters()Landroid/content/IntentFilter;

    move-result-object v5

    .line 182
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v9, "android.settings.SETTINGS_CHANGED_ACTION"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v9, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupSettingsObserver()V

    .line 191
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->observeAllObserver()V

    .line 192
    return-void

    .line 175
    .end local v5           #filter:Landroid/content/IntentFilter;
    :cond_4
    sget-object v9, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v8, v9}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public updateWidget()V
    .locals 0

    .prologue
    .line 195
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateAllButtons()V

    .line 196
    return-void
.end method
