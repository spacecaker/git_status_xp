.class Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuOpenAnimationController"
.end annotation


# instance fields
.field mAniIndexSelector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRand:Ljava/util/Random;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2452
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 2453
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {p0, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 2454
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mRand:Ljava/util/Random;

    .line 2455
    return-void
.end method

.method private initAnimations()V
    .locals 3

    .prologue
    .line 2458
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1200(Lcom/sec/android/app/twlauncher/MenuManager;)I

    move-result v2

    new-array v0, v2, [Ljava/lang/Integer;

    .line 2459
    .local v0, arrIndex:[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1200(Lcom/sec/android/app/twlauncher/MenuManager;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2460
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAniIndexSelector:Ljava/util/List;

    .line 2461
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAniIndexSelector:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 2462
    return-void
.end method


# virtual methods
.method protected getDelayForView(Landroid/view/View;)J
    .locals 11
    .parameter "view"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 2466
    sget-boolean v6, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v6, :cond_3

    .line 2476
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2477
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 2479
    .local v2, index:I
    if-nez v2, :cond_0

    .line 2481
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->initAnimations()V

    .line 2484
    :cond_0
    const/4 v0, 0x4

    .line 2486
    .local v0, OPEN_ROTATION_ANIMATION_ITEM_COUNT:I
    if-ltz v2, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1200(Lcom/sec/android/app/twlauncher/MenuManager;)I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 2487
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAniIndexSelector:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2488
    .local v3, indexInSelector:I
    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    .line 2489
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #calls: Lcom/sec/android/app/twlauncher/MenuManager;->getRotateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    invoke-static {v6, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1300(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 2490
    mul-int/lit8 v6, v3, 0x1e

    int-to-long v6, v6

    .line 2505
    .end local v0           #OPEN_ROTATION_ANIMATION_ITEM_COUNT:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #index:I
    .end local v3           #indexInSelector:I
    :goto_0
    return-wide v6

    .line 2492
    .restart local v0       #OPEN_ROTATION_ANIMATION_ITEM_COUNT:I
    .restart local v1       #group:Landroid/view/ViewGroup;
    .restart local v2       #index:I
    .restart local v3       #indexInSelector:I
    :cond_1
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v8, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAnimation:Landroid/view/animation/Animation;

    move-wide v6, v9

    .line 2493
    goto :goto_0

    .line 2496
    .end local v3           #indexInSelector:I
    :cond_2
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v8, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAnimation:Landroid/view/animation/Animation;

    move-wide v6, v9

    .line 2497
    goto :goto_0

    .line 2501
    .end local v0           #OPEN_ROTATION_ANIMATION_ITEM_COUNT:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #index:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2502
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, v4, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2503
    .local v5, params:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1400(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;

    move-result-object v6

    iget v7, v5, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 2504
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x258

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2505
    invoke-super {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getDelayForView(Landroid/view/View;)J

    move-result-wide v6

    goto :goto_0
.end method
