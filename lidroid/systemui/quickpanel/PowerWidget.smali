.class public Lcom/lidroid/systemui/quickpanel/PowerWidget;
.super Landroid/widget/FrameLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;,
        Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;,
        Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    }
.end annotation


# static fields
.field private static final BUTTONS_DEFAULT:Ljava/lang/String; = "toggleMeProfile|toggleSystemSettings|toggleRecentApps|toggleBatteryInfo|toggleWifi|toggleWifiAp|toggleBluetooth|toggleGPS|toggleSound|toggleFlashlight|toggleBrightness|toggleScreenTimeout|toggleStayAwakePlugged|toggleSync|toggleLockScreen|toggleAutoRotate|toggleAirplane|toggleMobileData|toggleNetworkMode|toggleUSBConnectionMode|toggleUSBDebugging|toggleReboot|toggleShutdown"

.field public static final BUTTON_DELIMITER:Ljava/lang/String; = "|"

.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

.field public static final EXPANDED_BRIGHTNESS_MODE:Ljava/lang/String; = "expanded_brightness_mode"

.field public static final EXPANDED_FLASH_MODE:Ljava/lang/String; = "expanded_flash_mode"

.field public static final EXPANDED_HAPTIC_FEEDBACK:Ljava/lang/String; = "expanded_haptic_feedback"

.field public static final EXPANDED_HIDE_ONCHANGE:Ljava/lang/String; = "expanded_hide_onchange"

.field public static final EXPANDED_RING_MODE:Ljava/lang/String; = "expanded_ring_mode"

.field private static final LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I = 0x8

.field private static final LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PowerWidget"

.field public static final WIDGET_BUTTONS:Ljava/lang/String; = "expanded_widget_buttons"

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

.field private mButtonsPerRow:I

.field private mButtonsWithLabel:Z

.field private mContext:Landroid/content/Context;

.field private mGridLayout:Z

.field private mGridScrollView:Landroid/widget/ScrollView;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeProfileContactObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;

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

.field private mTableLayout:Landroid/widget/TableLayout;

.field private mTableRow1:Landroid/widget/TableRow;

.field private mTableRow10:Landroid/widget/TableRow;

.field private mTableRow11:Landroid/widget/TableRow;

.field private mTableRow12:Landroid/widget/TableRow;

.field private mTableRow13:Landroid/widget/TableRow;

.field private mTableRow14:Landroid/widget/TableRow;

.field private mTableRow15:Landroid/widget/TableRow;

.field private mTableRow2:Landroid/widget/TableRow;

.field private mTableRow3:Landroid/widget/TableRow;

.field private mTableRow4:Landroid/widget/TableRow;

.field private mTableRow5:Landroid/widget/TableRow;

.field private mTableRow6:Landroid/widget/TableRow;

.field private mTableRow7:Landroid/widget/TableRow;

.field private mTableRow8:Landroid/widget/TableRow;

.field private mTableRow9:Landroid/widget/TableRow;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 41
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attSet"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mMeProfileContactObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mGridLayout:Z

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonsPerRow:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonsWithLabel:Z

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$2(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->animateCollapse()V

    return-void
.end method

.method private addViewToTableRow(Landroid/view/View;II)V
    .locals 10
    .parameter "v"
    .parameter "position"
    .parameter "buttonsPerRow"

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x19

    const/16 v7, 0x15

    const/16 v6, 0x10

    const/4 v5, 0x1

    .line 595
    const/4 v2, 0x1

    .line 598
    .local v2, weight:I
    iget-boolean v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonsWithLabel:Z

    if-eqz v3, :cond_1

    .line 600
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 608
    .local v0, buttonHeight:I
    :goto_0
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 609
    .local v1, lp:Landroid/widget/TableRow$LayoutParams;
    int-to-float v3, v2

    iput v3, v1, Landroid/widget/TableRow$LayoutParams;->weight:F

    .line 611
    packed-switch p3, :pswitch_data_0

    .line 794
    :cond_0
    :goto_1
    return-void

    .line 604
    .end local v0           #buttonHeight:I
    .end local v1           #lp:Landroid/widget/TableRow$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0       #buttonHeight:I
    goto :goto_0

    .line 615
    .restart local v1       #lp:Landroid/widget/TableRow$LayoutParams;
    :pswitch_0
    if-lt p2, v5, :cond_2

    const/4 v3, 0x2

    if-gt p2, v3, :cond_2

    .line 617
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow1:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 619
    :cond_2
    const/4 v3, 0x3

    if-lt p2, v3, :cond_3

    if-gt p2, v9, :cond_3

    .line 621
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow2:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 623
    :cond_3
    const/4 v3, 0x5

    if-lt p2, v3, :cond_4

    const/4 v3, 0x6

    if-gt p2, v3, :cond_4

    .line 625
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow3:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 627
    :cond_4
    const/4 v3, 0x7

    if-lt p2, v3, :cond_5

    const/16 v3, 0x8

    if-gt p2, v3, :cond_5

    .line 629
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow4:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 631
    :cond_5
    const/16 v3, 0x9

    if-lt p2, v3, :cond_6

    const/16 v3, 0xa

    if-gt p2, v3, :cond_6

    .line 633
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow5:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 635
    :cond_6
    const/16 v3, 0xb

    if-lt p2, v3, :cond_7

    const/16 v3, 0xc

    if-gt p2, v3, :cond_7

    .line 637
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow6:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 639
    :cond_7
    const/16 v3, 0xd

    if-lt p2, v3, :cond_8

    const/16 v3, 0xe

    if-gt p2, v3, :cond_8

    .line 641
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow7:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 643
    :cond_8
    const/16 v3, 0xf

    if-lt p2, v3, :cond_9

    if-gt p2, v6, :cond_9

    .line 645
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow8:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 647
    :cond_9
    const/16 v3, 0x11

    if-lt p2, v3, :cond_a

    const/16 v3, 0x12

    if-gt p2, v3, :cond_a

    .line 649
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow9:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 651
    :cond_a
    const/16 v3, 0x13

    if-lt p2, v3, :cond_b

    const/16 v3, 0x14

    if-gt p2, v3, :cond_b

    .line 653
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow10:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 655
    :cond_b
    if-lt p2, v7, :cond_c

    const/16 v3, 0x16

    if-gt p2, v3, :cond_c

    .line 657
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow11:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 659
    :cond_c
    const/16 v3, 0x17

    if-lt p2, v3, :cond_d

    const/16 v3, 0x18

    if-gt p2, v3, :cond_d

    .line 661
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow12:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 663
    :cond_d
    if-lt p2, v8, :cond_e

    const/16 v3, 0x1a

    if-gt p2, v3, :cond_e

    .line 665
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow13:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 667
    :cond_e
    const/16 v3, 0x1b

    if-lt p2, v3, :cond_f

    const/16 v3, 0x1c

    if-gt p2, v3, :cond_f

    .line 669
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow14:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 671
    :cond_f
    const/16 v3, 0x1d

    if-lt p2, v3, :cond_0

    const/16 v3, 0x1e

    if-gt p2, v3, :cond_0

    .line 673
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow15:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 681
    :pswitch_1
    if-lt p2, v5, :cond_10

    const/4 v3, 0x3

    if-gt p2, v3, :cond_10

    .line 683
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow1:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 685
    :cond_10
    if-lt p2, v9, :cond_11

    const/4 v3, 0x6

    if-gt p2, v3, :cond_11

    .line 687
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow2:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 689
    :cond_11
    const/4 v3, 0x7

    if-lt p2, v3, :cond_12

    const/16 v3, 0x9

    if-gt p2, v3, :cond_12

    .line 691
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow3:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 693
    :cond_12
    const/16 v3, 0xa

    if-lt p2, v3, :cond_13

    const/16 v3, 0xc

    if-gt p2, v3, :cond_13

    .line 695
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow4:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 697
    :cond_13
    const/16 v3, 0xd

    if-lt p2, v3, :cond_14

    const/16 v3, 0xf

    if-gt p2, v3, :cond_14

    .line 699
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow5:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 701
    :cond_14
    if-lt p2, v6, :cond_15

    const/16 v3, 0x12

    if-gt p2, v3, :cond_15

    .line 703
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow6:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 705
    :cond_15
    const/16 v3, 0x13

    if-lt p2, v3, :cond_16

    if-gt p2, v7, :cond_16

    .line 707
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow7:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 709
    :cond_16
    const/16 v3, 0x16

    if-lt p2, v3, :cond_17

    const/16 v3, 0x18

    if-gt p2, v3, :cond_17

    .line 711
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow8:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 713
    :cond_17
    if-lt p2, v8, :cond_18

    const/16 v3, 0x1b

    if-gt p2, v3, :cond_18

    .line 715
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow9:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 717
    :cond_18
    const/16 v3, 0x1c

    if-lt p2, v3, :cond_0

    const/16 v3, 0x1e

    if-gt p2, v3, :cond_0

    .line 719
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow10:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 727
    :pswitch_2
    if-lt p2, v5, :cond_19

    if-gt p2, v9, :cond_19

    .line 729
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow1:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 731
    :cond_19
    const/4 v3, 0x5

    if-lt p2, v3, :cond_1a

    const/16 v3, 0x8

    if-gt p2, v3, :cond_1a

    .line 733
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow2:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 735
    :cond_1a
    const/16 v3, 0x9

    if-lt p2, v3, :cond_1b

    const/16 v3, 0xc

    if-gt p2, v3, :cond_1b

    .line 737
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow3:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 739
    :cond_1b
    const/16 v3, 0xd

    if-lt p2, v3, :cond_1c

    if-gt p2, v6, :cond_1c

    .line 741
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow4:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 743
    :cond_1c
    const/16 v3, 0x11

    if-lt p2, v3, :cond_1d

    const/16 v3, 0x14

    if-gt p2, v3, :cond_1d

    .line 745
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow5:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 747
    :cond_1d
    if-lt p2, v7, :cond_1e

    const/16 v3, 0x18

    if-gt p2, v3, :cond_1e

    .line 749
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow6:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 751
    :cond_1e
    if-lt p2, v8, :cond_1f

    const/16 v3, 0x1c

    if-gt p2, v3, :cond_1f

    .line 753
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow7:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 755
    :cond_1f
    const/16 v3, 0x1d

    if-lt p2, v3, :cond_0

    const/16 v3, 0x20

    if-gt p2, v3, :cond_0

    .line 757
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow8:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 765
    :pswitch_3
    if-lt p2, v5, :cond_20

    const/4 v3, 0x5

    if-gt p2, v3, :cond_20

    .line 767
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow1:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 769
    :cond_20
    const/4 v3, 0x6

    if-lt p2, v3, :cond_21

    const/16 v3, 0xa

    if-gt p2, v3, :cond_21

    .line 771
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow2:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 773
    :cond_21
    const/16 v3, 0xb

    if-lt p2, v3, :cond_22

    const/16 v3, 0xf

    if-gt p2, v3, :cond_22

    .line 775
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow3:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 777
    :cond_22
    if-lt p2, v6, :cond_23

    const/16 v3, 0x14

    if-gt p2, v3, :cond_23

    .line 779
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow4:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 781
    :cond_23
    if-lt p2, v7, :cond_24

    if-gt p2, v8, :cond_24

    .line 783
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow5:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 785
    :cond_24
    const/16 v3, 0x1a

    if-lt p2, v3, :cond_0

    const/16 v3, 0x1e

    if-gt p2, v3, :cond_0

    .line 787
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow6:Landroid/widget/TableRow;

    invoke-virtual {v3, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private animateCollapse()V
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 379
    .local v0, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 380
    return-void
.end method

.method private findMeProfileContactUri()Landroid/net/Uri;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    const/4 v8, 0x0

    .line 846
    .local v8, uriMe:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 847
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 851
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 859
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 870
    :cond_1
    return-object v8

    .line 857
    :catchall_0
    move-exception v0

    .line 859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 861
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 864
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 866
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private inflateButtonView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 5
    .parameter "button"
    .parameter "withLabel"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 251
    const-string v1, "toggleMeProfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030028

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, buttonView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 257
    .end local v0           #buttonView:Landroid/view/View;
    :cond_0
    if-eqz p2, :cond_1

    .line 259
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001c

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #buttonView:Landroid/view/View;
    goto :goto_0

    .line 263
    .end local v0           #buttonView:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002a

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #buttonView:Landroid/view/View;
    goto :goto_0
.end method

.method private inflateButtonViewDeL(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "button"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 214
    const-string v1, "toggleMeProfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030028

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, buttonView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 220
    .end local v0           #buttonView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001c

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #buttonView:Landroid/view/View;
    goto :goto_0
.end method

.method private needScrollBar(I)Z
    .locals 3
    .parameter "buttons"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, need:Z
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 103
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const/4 v1, 0x5

    if-le p1, v1, :cond_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private observeAllObserver()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    return-void

    .line 128
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->observe()V

    goto :goto_0
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 140
    :cond_0
    return-void
.end method

.method private setupMeProfileContactObserver()V
    .locals 5

    .prologue
    .line 820
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mMeProfileContactObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 825
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->findMeProfileContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 826
    .local v1, uriMe:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 829
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mMeProfileContactObserver:Lcom/lidroid/systemui/quickpanel/PowerWidget$MeProfileContactObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .end local v1           #uriMe:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setupSettingsObserver()V
    .locals 6

    .prologue
    .line 145
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 148
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_haptic_feedback"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_widget_buttons"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getAllObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 156
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    return-void

    .line 158
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 159
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setupTableLayout(I)V
    .locals 9
    .parameter "buttonsPerRow"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 430
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    if-nez v3, :cond_0

    .line 433
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, v8, v7}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 435
    .local v0, lp:Landroid/widget/TableLayout$LayoutParams;
    new-instance v3, Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    .line 436
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3, v0}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 440
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v8, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 442
    .local v1, rp:Landroid/widget/TableRow$LayoutParams;
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow1:Landroid/widget/TableRow;

    .line 443
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow1:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow2:Landroid/widget/TableRow;

    .line 446
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow2:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow3:Landroid/widget/TableRow;

    .line 449
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow3:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow4:Landroid/widget/TableRow;

    .line 452
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow4:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow5:Landroid/widget/TableRow;

    .line 455
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow5:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow6:Landroid/widget/TableRow;

    .line 458
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow6:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow7:Landroid/widget/TableRow;

    .line 461
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow7:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow8:Landroid/widget/TableRow;

    .line 464
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow8:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow9:Landroid/widget/TableRow;

    .line 467
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow9:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow10:Landroid/widget/TableRow;

    .line 470
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow10:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow11:Landroid/widget/TableRow;

    .line 473
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow11:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow12:Landroid/widget/TableRow;

    .line 476
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow12:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow13:Landroid/widget/TableRow;

    .line 479
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow13:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow14:Landroid/widget/TableRow;

    .line 482
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow14:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow15:Landroid/widget/TableRow;

    .line 485
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow15:Landroid/widget/TableRow;

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow1:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 489
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow2:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 490
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow3:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 491
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow4:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 492
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow5:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow6:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 494
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow7:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 495
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow8:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 496
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow9:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 497
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow10:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 498
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow11:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 499
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow12:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 500
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow13:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow14:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 502
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow15:Landroid/widget/TableRow;

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 505
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001d

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mGridScrollView:Landroid/widget/ScrollView;

    .line 506
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 509
    .local v2, svp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mGridScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    .end local v0           #lp:Landroid/widget/TableLayout$LayoutParams;
    .end local v1           #rp:Landroid/widget/TableRow$LayoutParams;
    .end local v2           #svp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow1:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 515
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow2:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 516
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow3:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 517
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow4:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 518
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow5:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 519
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow6:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 520
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow7:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 521
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow8:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 522
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow9:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 523
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow10:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 524
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow11:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 525
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow12:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 526
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow13:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 527
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow14:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 528
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow15:Landroid/widget/TableRow;

    invoke-virtual {v3}, Landroid/widget/TableRow;->removeAllViews()V

    .line 531
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow1:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 532
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow2:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 533
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow3:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 534
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow4:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 535
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow5:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 536
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow6:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 537
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow7:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 538
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow8:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 539
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow9:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 540
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow10:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 541
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow11:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 542
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow12:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 543
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow13:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 544
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow14:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 545
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mTableRow15:Landroid/widget/TableRow;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 547
    return-void
.end method

.method private unobserveAllObserver()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 168
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    return-void

    .line 170
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->unobserve()V

    goto :goto_0
.end method

.method private updateButtonLayoutWidth()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 182
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 191
    :goto_0
    iget-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonsWithLabel:Z

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 200
    :goto_1
    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 197
    :cond_1
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1
.end method


# virtual methods
.method public fullScroll()V
    .locals 3

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mGridLayout:Z

    .line 276
    .local v0, gridLayout:Z
    if-nez v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mGridScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 192
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$1;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget$1;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerWidget$2;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget$2;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 213
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 218
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 225
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 227
    return-void
.end method

.method public setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 231
    invoke-static {p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method public setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 237
    invoke-static {p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    return-void
.end method

.method public setupButtonsWithLabel(Z)V
    .locals 0
    .parameter "withLabel"

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonsWithLabel:Z

    .line 291
    return-void
.end method

.method public setupGridLayout(I)V
    .locals 1
    .parameter "buttonsPerRow"

    .prologue
    .line 261
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 263
    iput p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonsPerRow:I

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mGridLayout:Z

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mGridLayout:Z

    goto :goto_0
.end method

.method public setupWidget()V
    .locals 17

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mGridLayout:Z

    .line 311
    .local v7, gridLayout:Z
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonsWithLabel:Z

    .line 312
    .local v10, withLabel:Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtonsPerRow:I

    .line 314
    .local v5, buttonsPerRow:I
    const-string v11, "PowerToggles"

    const-string v12, "Clearing any old widget stuffs"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-eqz v7, :cond_0

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupTableLayout(I)V

    .line 324
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->removeAllViews()V

    .line 327
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v11, :cond_1

    .line 329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v11, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 337
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->unloadAllButtons()V

    .line 339
    const-string v11, "PowerToggles"

    const-string v12, "Setting up widget"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "expanded_widget_buttons"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, buttons:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 345
    const-string v11, "PowerToggles"

    const-string v12, "Default buttons being loaded"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v4, "toggleMeProfile|toggleSystemSettings|toggleRecentApps|toggleBatteryInfo|toggleWifi|toggleWifiAp|toggleBluetooth|toggleGPS|toggleSound|toggleFlashlight|toggleBrightness|toggleScreenTimeout|toggleStayAwakePlugged|toggleSync|toggleLockScreen|toggleAutoRotate|toggleAirplane|toggleMobileData|toggleNetworkMode|toggleUSBConnectionMode|toggleUSBDebugging|toggleReboot|toggleShutdown"

    .line 350
    :cond_2
    const-string v11, "PowerToggles"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Button list: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-nez v7, :cond_6

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    .line 358
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 359
    .local v8, ll:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 360
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, buttonCount:I
    const-string v11, "\\|"

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v13, :cond_3

    .line 386
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->needScrollBar(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f03001f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 392
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v14}, Landroid/widget/HorizontalScrollView;->getVerticalScrollbarWidth()I

    move-result v14

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 395
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v12, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v11, v8, v12}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v12, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    .end local v8           #ll:Landroid/widget/LinearLayout;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupBroadcastReceiver()V

    .line 442
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getAllBroadcastIntentFilters()Landroid/content/IntentFilter;

    move-result-object v6

    .line 445
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v11, "android.settings.SETTINGS_CHANGED_ACTION"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v11, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v11, v12, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupSettingsObserver()V

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->observeAllObserver()V

    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupMeProfileContactObserver()V

    .line 463
    return-void

    .line 363
    .end local v6           #filter:Landroid/content/IntentFilter;
    .restart local v8       #ll:Landroid/widget/LinearLayout;
    :cond_3
    aget-object v1, v12, v11

    .line 365
    .local v1, button:Ljava/lang/String;
    const-string v14, "PowerToggles"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Setting up button: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->inflateButtonView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v3

    .line 371
    .local v3, buttonView:Landroid/view/View;
    invoke-static {v1, v3}, Lcom/lidroid/systemui/quickpanel/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 374
    sget-object v14, Lcom/lidroid/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    add-int/lit8 v2, v2, 0x1

    .line 363
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 380
    :cond_4
    const-string v14, "PowerToggles"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error setting up button: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 403
    .end local v1           #button:Ljava/lang/String;
    .end local v3           #buttonView:Landroid/view/View;
    :cond_5
    sget-object v11, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 411
    .end local v2           #buttonCount:I
    .end local v8           #ll:Landroid/widget/LinearLayout;
    :cond_6
    const/4 v2, 0x0

    .line 412
    .restart local v2       #buttonCount:I
    const-string v11, "\\|"

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_3
    if-lt v11, v13, :cond_7

    .line 436
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;->mGridScrollView:Landroid/widget/ScrollView;

    sget-object v12, Lcom/lidroid/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 412
    :cond_7
    aget-object v1, v12, v11

    .line 414
    .restart local v1       #button:Ljava/lang/String;
    const-string v14, "PowerToggles"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Setting up button: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->inflateButtonView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v3

    .line 419
    .restart local v3       #buttonView:Landroid/view/View;
    invoke-static {v1, v3}, Lcom/lidroid/systemui/quickpanel/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 421
    add-int/lit8 v9, v2, 0x1

    .line 424
    .local v9, position:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v5}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->addViewToTableRow(Landroid/view/View;II)V

    .line 426
    add-int/lit8 v2, v2, 0x1

    .line 412
    .end local v9           #position:I
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 430
    :cond_8
    const-string v14, "PowerToggles"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error setting up button: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public updateWidget()V
    .locals 0

    .prologue
    .line 745
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateAllButtons()V

    .line 747
    return-void
.end method
