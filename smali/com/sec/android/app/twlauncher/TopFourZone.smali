.class public Lcom/sec/android/app/twlauncher/TopFourZone;
.super Landroid/widget/LinearLayout;
.source "TopFourZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/TopFourZone$Animate;
    }
.end annotation


# static fields
.field private static final APPLICATION_ICON_SLOT_TAG:Ljava/lang/Object;

.field private static final EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;


# instance fields
.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

.field private mChildHeight:I

.field private mChildWidth:I

.field private mDraggingView:Landroid/view/View;

.field private mEnabledChildAnimation:Z

.field private mEnabledDrawing:Z

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mOldOrientation:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOrientation:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mTopOffset:I

.field private mVirtualView:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/TopFourZone;->EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/TopFourZone;->APPLICATION_ICON_SLOT_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mEnabledDrawing:Z

    .line 72
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    .line 75
    iput v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    .line 78
    new-array v0, v2, [Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    .line 376
    new-instance v0, Lcom/sec/android/app/twlauncher/TopFourZone$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/TopFourZone$1;-><init>(Lcom/sec/android/app/twlauncher/TopFourZone;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 387
    new-instance v0, Lcom/sec/android/app/twlauncher/TopFourZone$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/TopFourZone$2;-><init>(Lcom/sec/android/app/twlauncher/TopFourZone;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->init()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/TopFourZone;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/TopFourZone;Landroid/view/View;Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/TopFourZone;->startDragItem(Landroid/view/View;Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/TopFourZone;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    return-object v0
.end method

.method private findIconMenuApplicationIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v7, 0x0

    .line 860
    const/4 v3, 0x0

    .line 861
    .local v3, icon:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 862
    .local v4, resource:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 866
    .local v1, d:Landroid/graphics/drawable/Drawable;
    const-string v6, "com.android.browser"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 867
    const v6, 0x7f0200d0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 903
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 904
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 905
    .local v5, width:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 907
    .local v2, height:I
    invoke-virtual {v1, v7, v7, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 908
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 909
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 910
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 913
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_1
    return-object v3

    .line 868
    :cond_2
    const-string v6, "com.android.calculator2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 869
    const v6, 0x7f0200a1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 870
    :cond_3
    const-string v6, "com.android.calendar"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 871
    const v6, 0x7f0200a4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 872
    :cond_4
    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 873
    const v6, 0x7f0200a5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 874
    :cond_5
    const-string v6, "com.android.deskclock"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 875
    const v6, 0x7f0200a9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 876
    :cond_6
    const-string v6, "com.android.email"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 877
    const v6, 0x7f0200b8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 878
    :cond_7
    const-string v6, "com.samsung.app.fmradio"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 879
    const v6, 0x7f0200bc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 880
    :cond_8
    const-string v6, "com.cooliris.media"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 881
    const v6, 0x7f0200be

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 882
    :cond_9
    const-string v6, "com.google.android.gm"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 883
    const v6, 0x7f0200c1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 884
    :cond_a
    const-string v6, "com.android.vending"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 885
    const v6, 0x7f0200d9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 886
    :cond_b
    const-string v6, "com.sec.android.app.memo"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 887
    const v6, 0x7f0200dc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 888
    :cond_c
    const-string v6, "com.android.mms"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 889
    const v6, 0x7f0200de

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 890
    :cond_d
    const-string v6, "com.android.music"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 891
    const v6, 0x7f0200e6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 892
    :cond_e
    const-string v6, "com.sec.android.app.myfiles"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 893
    const v6, 0x7f0200e8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 894
    :cond_f
    const-string v6, "com.sec.android.app.samsungapps"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 895
    const v6, 0x7f0200f7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 896
    :cond_10
    const-string v6, "com.android.settings"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 897
    const v6, 0x7f0200fe

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 898
    :cond_11
    const-string v6, "com.sec.android.app.dialertab"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 899
    const v6, 0x7f0200b0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 900
    :cond_12
    const-string v6, "com.android.contacts"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 901
    const v6, 0x7f0200ab

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getBadgeCount(Lcom/sec/android/app/twlauncher/ShortcutInfo;)I
    .locals 3
    .parameter "info"

    .prologue
    .line 282
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 284
    :goto_0
    return v1

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 284
    .local v0, la:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v1

    goto :goto_0
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 94
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 97
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    .line 99
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_0

    .line 100
    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildHeight:I

    .line 103
    :goto_0
    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildWidth:I

    .line 106
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->setClickable(Z)V

    .line 108
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 111
    if-ne v1, v8, :cond_1

    .line 112
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    aget-object v3, v3, v1

    sget-object v4, Lcom/sec/android/app/twlauncher/TopFourZone;->APPLICATION_ICON_SLOT_TAG:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    .end local v1           #i:I
    :cond_0
    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildHeight:I

    goto :goto_0

    .line 114
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    aget-object v3, v3, v1

    sget-object v4, Lcom/sec/android/app/twlauncher/TopFourZone;->EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 118
    :cond_2
    iget v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    if-ne v3, v6, :cond_5

    .line 119
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/TopFourZone;->setOrientation(I)V

    .line 120
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_4

    .line 121
    iput-object v9, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->initVirtualView()V

    .line 140
    return-void

    .line 123
    :cond_4
    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    const/4 v3, 0x7

    iput v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    goto :goto_3

    .line 126
    :cond_5
    iget v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    if-ne v3, v8, :cond_3

    .line 127
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->setOrientation(I)V

    .line 128
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_6

    .line 129
    iput-object v9, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 131
    :cond_6
    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    iput v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    goto :goto_3
.end method

.method private initVirtualView()V
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->addView(Landroid/view/View;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private startDragItem(Landroid/view/View;Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 2
    .parameter "itemView"
    .parameter "info"

    .prologue
    .line 745
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, p2, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 749
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 10
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "Launcher.TopFourZone"

    .line 640
    const-string v5, "Launcher.TopFourZone"

    const-string v5, "acceptDrop()"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-boolean v5, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v5, :cond_0

    move v5, v8

    .line 671
    :goto_0
    return v5

    .line 645
    :cond_0
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v4, v0

    .line 646
    .local v4, info:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v5, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eq v5, v9, :cond_1

    .line 648
    const-string v5, "Launcher.TopFourZone"

    const-string v5, "not acceptable type"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 649
    goto :goto_0

    .line 652
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v2

    .local v2, count:I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 653
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 654
    .local v1, child:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 655
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 652
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 658
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/twlauncher/TopFourZone;->EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;

    if-ne v5, v6, :cond_4

    .line 660
    const-string v5, "Launcher.TopFourZone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty slot. acceptable !! index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 661
    goto :goto_0

    .line 663
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    if-ne v1, v5, :cond_2

    .line 665
    const-string v5, "Launcher.TopFourZone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original slot. acceptable !! index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 666
    goto :goto_0

    .line 670
    .end local v1           #child:Landroid/view/View;
    :cond_5
    const-string v5, "Launcher.TopFourZone"

    const-string v5, "not acceptable"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 671
    goto :goto_0
.end method

.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "v"
    .parameter "index"

    .prologue
    .line 457
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 458
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeViewAt(I)V

    .line 459
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/TopFourZone;->addView(Landroid/view/View;I)V

    .line 460
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 225
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mEnabledDrawing:Z

    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v2

    if-gez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 233
    iget v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 235
    .local v0, left:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    .line 241
    .local v1, top:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    .end local v0           #left:I
    .end local v1           #top:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 237
    :cond_3
    iget v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    add-int/lit8 v0, v2, 0x4

    .line 238
    .restart local v0       #left:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #top:I
    goto :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 7
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/16 v6, 0x42

    const/16 v4, 0x11

    const/4 v5, 0x1

    .line 493
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v3, :cond_5

    .line 494
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    .line 495
    .local v1, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 496
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 497
    .local v0, childCount:I
    if-le v0, v5, :cond_5

    .line 498
    if-ne p2, v4, :cond_1

    .line 499
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    if-nez v3, :cond_0

    .line 500
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_0
    move v3, v5

    .line 525
    .end local v0           #childCount:I
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :goto_0
    return v3

    .line 503
    .restart local v0       #childCount:I
    .restart local v1       #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :cond_1
    if-ne p2, v6, :cond_5

    .line 504
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    sub-int v4, v0, v5

    if-ne v3, v4, :cond_2

    .line 505
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_2
    move v3, v5

    .line 507
    goto :goto_0

    .line 510
    .end local v0           #childCount:I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 511
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    .line 512
    .local v2, w:Lcom/sec/android/app/twlauncher/Workspace;
    if-ne p2, v4, :cond_4

    .line 513
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    if-lez v3, :cond_5

    .line 514
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 515
    goto :goto_0

    .line 517
    :cond_4
    if-ne p2, v6, :cond_5

    .line 518
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    .line 519
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 520
    goto :goto_0

    .line 525
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public loadApplication(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 5
    .parameter "shortcutInfo"

    .prologue
    const-string v4, "Launcher.TopFourZone"

    .line 253
    const-string v2, "Launcher.TopFourZone"

    const-string v2, "loadApplication()"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/TopFourZone;->makeItemView(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    .line 257
    .local v1, item:Landroid/view/View;
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 258
    .local v0, index:I
    const-string v2, "Launcher.TopFourZone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcutInfo.cellX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-ltz v0, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 260
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeViewAt(I)V

    .line 261
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/TopFourZone;->addView(Landroid/view/View;I)V

    .line 263
    :cond_0
    return-void
.end method

.method public makeItemView(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;
    .locals 11
    .parameter "tag"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 332
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 334
    .local v1, config:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    if-eq v7, v8, :cond_0

    .line 335
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    .line 336
    iget v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    iput v7, v1, Landroid/content/res/Configuration;->orientation:I

    .line 338
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 339
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v5, v1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 342
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    const/4 v3, 0x0

    .line 343
    .local v3, itemView:Landroid/view/View;
    sget-boolean v7, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v7, :cond_2

    .line 344
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030005

    invoke-virtual {v7, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 348
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v2

    .line 350
    .local v2, iconCache:Lcom/sec/android/app/twlauncher/IconCache;
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v6, v0

    .line 351
    .local v6, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    sget-boolean v7, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v7, :cond_4

    .line 352
    iget v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v7, v9, :cond_3

    .line 353
    new-instance v7, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v8, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/TopFourZone;->findIconMenuApplicationIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 362
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 365
    invoke-virtual {v6, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setTag(Ljava/lang/Object;)V

    .line 367
    iget v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    if-eq v7, v9, :cond_1

    .line 368
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 369
    .restart local v4       #metrics:Landroid/util/DisplayMetrics;
    iget v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    iput v7, v1, Landroid/content/res/Configuration;->orientation:I

    .line 370
    invoke-virtual {v5, v1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 371
    iput v9, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    .line 373
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    return-object v6

    .line 346
    .end local v2           #iconCache:Lcom/sec/android/app/twlauncher/IconCache;
    .end local v6           #view:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030004

    invoke-virtual {v7, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 355
    .restart local v2       #iconCache:Lcom/sec/android/app/twlauncher/IconCache;
    .restart local v6       #view:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_3
    new-instance v7, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 357
    :cond_4
    new-instance v7, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v7, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 676
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 680
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 684
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 688
    const-string v1, "Launcher.TopFourZone"

    const-string v2, "onDrop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v9

    .local v9, count:I
    :goto_0
    if-ge v6, v9, :cond_5

    .line 691
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 692
    .local v8, child:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 693
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 690
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 696
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/TopFourZone;->EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;

    if-ne v1, v2, :cond_4

    .line 698
    const-string v1, "Launcher.TopFourZone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop on empty slot. drop index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v2, v0

    .line 702
    .local v2, info:Lcom/sec/android/app/twlauncher/ItemInfo;
    const/4 v11, 0x0

    .line 704
    .local v11, view:Landroid/view/View;
    iget v1, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 714
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .end local v2           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    :pswitch_0
    iget-wide v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v1, v3, v7

    if-nez v1, :cond_2

    instance-of v1, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_2

    .line 709
    new-instance v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-direct {v10, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .local v10, info:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object v2, v10

    .line 711
    .end local v10           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_2
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->makeItemView(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v11

    .line 717
    invoke-virtual {p0, v11, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    .line 719
    iget-wide v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v1, v3, v7

    if-nez v1, :cond_3

    .line 720
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v3, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    .line 723
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v3, -0x64

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 742
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v8           #child:Landroid/view/View;
    .end local v11           #view:Landroid/view/View;
    :goto_1
    return-void

    .line 727
    .restart local v8       #child:Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    if-ne v8, v1, :cond_0

    .line 728
    const-string v1, "Launcher.TopFourZone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop on original slot. drop index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v2, v0

    .line 732
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    check-cast v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v2           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->makeItemView(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v11

    .line 733
    .restart local v11       #view:Landroid/view/View;
    invoke-virtual {p0, v11, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    goto :goto_1

    .line 741
    .end local v8           #child:Landroid/view/View;
    .end local v11           #view:Landroid/view/View;
    :cond_5
    const-string v1, "Launcher.TopFourZone"

    const-string v2, "onDrop() at wrong index !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 6
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 752
    if-eqz p2, :cond_0

    .line 753
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeItem(Landroid/view/View;)I

    .line 755
    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v1, v0

    .line 757
    .local v1, ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    if-ne p1, p0, :cond_1

    .line 769
    .end local v1           #ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    .line 770
    return-void

    .line 761
    .restart local v1       #ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_1
    iget-wide v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 763
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v1           #ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getOrientation()I

    move-result v8

    .line 173
    .local v8, orientation:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v6

    .line 174
    .local v6, count:I
    const/4 v2, 0x0

    .line 175
    .local v2, childLeft:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    .line 176
    .local v3, childTop:I
    const/4 v4, 0x0

    .line 178
    .local v4, childTopMargin:I
    if-eqz v8, :cond_0

    .line 179
    const/4 v2, 0x0

    .line 180
    iget v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    .line 181
    iget v4, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    .line 184
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    .line 185
    .local v9, r:Landroid/graphics/Rect;
    if-nez v8, :cond_2

    .line 186
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_4

    .line 187
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 189
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 190
    .local v1, childHeight:I
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_1

    .line 193
    add-int v10, v2, v5

    add-int v11, v3, v1

    invoke-virtual {v9, v2, v3, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

    aget-object v10, v10, v7

    invoke-virtual {v10, v0, v9}, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 198
    :goto_1
    add-int/2addr v2, v5

    .line 186
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 196
    :cond_1
    add-int v10, v2, v5

    add-int v11, v3, v1

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 201
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v5           #childWidth:I
    .end local v7           #i:I
    :cond_2
    const/4 v10, 0x1

    sub-int v7, v6, v10

    .restart local v7       #i:I
    :goto_2
    if-ltz v7, :cond_4

    .line 202
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 204
    .restart local v5       #childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 205
    .restart local v1       #childHeight:I
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_3

    .line 208
    add-int/lit8 v10, v5, 0x0

    add-int v11, v3, v1

    invoke-virtual {v9, v2, v3, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

    aget-object v10, v10, v7

    invoke-virtual {v10, v0, v9}, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 213
    :goto_3
    add-int v10, v1, v4

    add-int/2addr v3, v10

    .line 201
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 211
    :cond_3
    add-int/lit8 v10, v5, 0x0

    add-int v11, v3, v1

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 216
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v5           #childWidth:I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 150
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 153
    .local v4, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 155
    .local v1, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v0

    .line 156
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getOrientation()I

    move-result v3

    .line 157
    .local v3, orientation:I
    if-nez v3, :cond_0

    .line 158
    div-int/lit8 v5, v4, 0x4

    iput v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildWidth:I

    .line 163
    :goto_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 164
    iget v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildHeight:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 165
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 166
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    .end local v2           #i:I
    :cond_0
    div-int/lit8 v5, v1, 0x4

    iget v6, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildHeight:I

    goto :goto_0

    .line 168
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method removeItem(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v1

    .line 467
    .local v1, count:I
    const/4 v3, -0x1

    .line 468
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 469
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 470
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_2

    .line 471
    move v3, v2

    .line 476
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 477
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeViewAt(I)V

    .line 478
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->addView(Landroid/view/View;I)V

    .line 480
    :cond_1
    return v3

    .line 468
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeItems(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v1

    .line 775
    .local v1, count:I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 776
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 777
    .local v0, appCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 778
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 777
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 781
    :cond_0
    new-instance v4, Lcom/sec/android/app/twlauncher/TopFourZone$3;

    invoke-direct {v4, p0, v1, v3}, Lcom/sec/android/app/twlauncher/TopFourZone$3;-><init>(Lcom/sec/android/app/twlauncher/TopFourZone;ILjava/util/HashSet;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->post(Ljava/lang/Runnable;)Z

    .line 817
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 412
    return-void
.end method

.method public updateBadges()V
    .locals 7

    .prologue
    .line 288
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 289
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 291
    .local v5, tag:Ljava/lang/Object;
    instance-of v6, v5, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v6, :cond_0

    .line 292
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v4, v0

    .line 293
    .local v4, si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->getBadgeCount(Lcom/sec/android/app/twlauncher/ShortcutInfo;)I

    move-result v6

    iput v6, v4, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 294
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 288
    .end local v4           #si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    .end local v1           #child:Landroid/view/View;
    .end local v5           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v15, 0x0

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v4

    .line 821
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 822
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 823
    .local v11, view:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 824
    .local v10, tag:Ljava/lang/Object;
    if-eqz v10, :cond_3

    instance-of v12, v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v12, :cond_3

    .line 825
    move-object v0, v10

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v6, v0

    .line 829
    .local v6, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v7, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 830
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 831
    .local v9, name:Landroid/content/ComponentName;
    iget v12, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-nez v12, :cond_3

    const-string v12, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz v9, :cond_3

    .line 833
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 834
    .local v3, appCount:I
    const/4 v8, 0x0

    .local v8, k:I
    :goto_1
    if-ge v8, v3, :cond_3

    .line 835
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 836
    .local v2, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v12, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object v12, v0

    iget-object v13, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v13}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 843
    instance-of v12, v11, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v12, :cond_1

    .line 844
    move-object v0, v11

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v12, v0

    new-instance v13, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object v14, v0

    invoke-virtual {v6, v14}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v13}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 834
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 845
    :cond_1
    instance-of v12, v11, Landroid/widget/TextView;

    if-eqz v12, :cond_2

    .line 846
    move-object v0, v11

    check-cast v0, Landroid/widget/TextView;

    move-object v12, v0

    new-instance v13, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object v14, v0

    invoke-virtual {v6, v14}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v15, v13, v15, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 850
    :cond_2
    const-string v12, "Launcher.TopFourZone"

    const-string v13, "TopFourZone.updateShortcuts : Unknow shortcut type. ICON NOT CHANGED"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 821
    .end local v2           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #appCount:I
    .end local v6           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #k:I
    .end local v9           #name:Landroid/content/ComponentName;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 857
    .end local v10           #tag:Ljava/lang/Object;
    .end local v11           #view:Landroid/view/View;
    :cond_4
    return-void
.end method
