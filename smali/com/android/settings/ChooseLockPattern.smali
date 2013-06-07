.class public Lcom/android/settings/ChooseLockPattern;
.super Landroid/app/Activity;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPattern$3;,
        Lcom/android/settings/ChooseLockPattern$Stage;,
        Lcom/android/settings/ChooseLockPattern$RightButtonMode;,
        Lcom/android/settings/ChooseLockPattern$LeftButtonMode;
    }
.end annotation


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mAnimatePattern:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/android/settings/ChooseLockPattern$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$1;-><init>(Lcom/android/settings/ChooseLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 255
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 257
    new-instance v0, Lcom/android/settings/ChooseLockPattern$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$2;-><init>(Lcom/android/settings/ChooseLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockPattern;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ChooseLockPattern;)Lcom/android/settings/ChooseLockPattern$Stage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChooseLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ChooseLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 477
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 478
    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 481
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 482
    .local v1, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v3

    .line 484
    .local v0, lockVirgin:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 485
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 487
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 489
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    .line 492
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->setResult(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->finish()V

    .line 494
    return-void

    .end local v0           #lockVirgin:Z
    :cond_1
    move v0, v4

    .line 482
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 93
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->finish()V

    .line 97
    :cond_0
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-string v4, "expected ui stage "

    const-string v3, " when button is "

    .line 333
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Retry:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    .line 336
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 337
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->setResult(I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->finish()V

    goto :goto_0

    .line 343
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Continue:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 349
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$Stage;

    if-eq v0, v1, :cond_4

    .line 350
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Continue:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_4
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_0

    .line 354
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Confirm:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 355
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$Stage;

    if-eq v0, v1, :cond_6

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Confirm:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;->saveChosenPatternAndFinish()V

    goto/16 :goto_0

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Ok:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$Stage;

    if-eq v0, v1, :cond_8

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 366
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 367
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 271
    new-instance v4, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 272
    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockPattern;->requestWindowFeature(I)Z

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->setupViews()V

    .line 278
    const v4, 0x7f0b0023

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 281
    .local v3, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "confirm_credentials"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 285
    .local v0, confirmCredentials:Z
    if-nez p1, :cond_2

    .line 286
    if-eqz v0, :cond_1

    .line 289
    sget-object v4, Lcom/android/settings/ChooseLockPattern$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    .line 290
    iget-object v4, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v5, 0x37

    invoke-virtual {v4, v5, v7, v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 293
    .local v1, launchedConfirmationActivity:Z
    if-nez v1, :cond_0

    .line 294
    sget-object v4, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    .line 307
    .end local v1           #launchedConfirmationActivity:Z
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    sget-object v4, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_0

    .line 301
    :cond_2
    const-string v4, "chosenPattern"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, patternString:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 303
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    .line 305
    :cond_3
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$Stage;->values()[Lcom/android/settings/ChooseLockPattern$Stage;

    move-result-object v4

    const-string v5, "uiStage"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 374
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$Stage;

    if-ne v0, v1, :cond_0

    .line 376
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    move v0, v2

    .line 385
    :goto_0
    return v0

    .line 380
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    if-ne v0, v1, :cond_1

    .line 381
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    move v0, v2

    .line 382
    goto :goto_0

    .line 385
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 392
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    return-void
.end method

.method protected setupViews()V
    .locals 2

    .prologue
    .line 314
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->setContentView(I)V

    .line 316
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mHeaderText:Landroid/widget/TextView;

    .line 318
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 319
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 323
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterText:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    .line 328
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V
    .locals 6
    .parameter "stage"

    .prologue
    const/4 v5, 0x0

    .line 407
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 411
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$Stage;

    if-ne p1, v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/ChooseLockPattern$Stage;->headerMessage:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :goto_0
    iget v0, p1, Lcom/android/settings/ChooseLockPattern$Stage;->footerMessage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :goto_1
    iget-object v0, p1, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    iget v1, v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 437
    iget-boolean v0, p1, Lcom/android/settings/ChooseLockPattern$Stage;->patternEnabled:Z

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 445
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 447
    sget-object v0, Lcom/android/settings/ChooseLockPattern$3;->$SwitchMap$com$android$settings$ChooseLockPattern$Stage:[I

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 470
    :goto_4
    :pswitch_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mHeaderText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->footerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    iget v1, v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 430
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 449
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 452
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 455
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;->postClearPatternRunnable()V

    goto :goto_4

    .line 461
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 464
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;->postClearPatternRunnable()V

    goto :goto_4

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
