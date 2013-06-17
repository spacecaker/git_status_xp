.class public Lcom/sec/android/app/camera/AddMeView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "AddMeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;,
        Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;
    }
.end annotation


# instance fields
.field private isLeftPane:Z

.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCaptureLayout:Landroid/widget/RelativeLayout;

.field private mIndicatorView:Landroid/view/ViewGroup;

.field private mListener:Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;

.field private mPostCaptureLayout:Landroid/widget/RelativeLayout;

.field private mPostCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

.field private mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

.field private mbCapturedFirtstPerson:Z

.field private mbHideViewRect:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 1
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AddMeView;->setCaptureEnabled(Z)V

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/AddMeView;->init()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/AddMeView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AddMeView;->mbHideViewRect:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/AddMeView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AddMeView;->mbHideViewRect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/AddMeView;)Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/AddMeView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AddMeView;->mbCapturedFirtstPerson:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/AddMeView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AddMeView;->isLeftPane:Z

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mCaptureLayout:Landroid/widget/RelativeLayout;

    .line 71
    new-instance v1, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    iget-object v2, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;-><init>(Lcom/sec/android/app/camera/AddMeView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    .line 73
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 78
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mCaptureLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000f

    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mBaseView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mIndicatorView:Landroid/view/ViewGroup;

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 97
    iput-boolean v4, p0, Lcom/sec/android/app/camera/AddMeView;->mbHideViewRect:Z

    .line 98
    return-void
.end method


# virtual methods
.method public getIsCapturedFirstPerson()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AddMeView;->mbCapturedFirtstPerson:Z

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 189
    :goto_0
    return v1

    .line 164
    :cond_0
    const-string v1, "AddMeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent test x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-boolean v1, p0, Lcom/sec/android/app/camera/AddMeView;->mbCapturedFirtstPerson:Z

    if-eqz v1, :cond_1

    move v1, v4

    .line 169
    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v5

    .line 189
    goto :goto_0

    :pswitch_0
    move v1, v4

    .line 174
    goto :goto_0

    .line 176
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_2

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    move v0, v4

    .line 180
    .local v0, isLeft:Z
    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/AddMeView;->isLeftPane:Z

    if-eq v1, v0, :cond_2

    .line 181
    iput-boolean v0, p0, Lcom/sec/android/app/camera/AddMeView;->isLeftPane:Z

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onAddMePositionSwitched(I)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->invalidate()V

    .end local v0           #isLeft:Z
    :cond_2
    move v1, v4

    .line 186
    goto/16 :goto_0

    :cond_3
    move v0, v5

    .line 177
    goto :goto_1

    .restart local v0       #isLeft:Z
    :cond_4
    move v2, v5

    .line 182
    goto :goto_2

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAddMeProgressStitching(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AddMeView;->mbHideViewRect:Z

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AddMeView;->mbHideViewRect:Z

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->invalidate()V

    .line 150
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    new-instance v1, Lcom/sec/android/app/camera/AddMeView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AddMeView$1;-><init>(Lcom/sec/android/app/camera/AddMeView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    :cond_1
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AddMeView;->mbCapturedFirtstPerson:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mListener:Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mListener:Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;->onAddMeCancelled()V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onAddMePositionSwitched(I)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 293
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 294
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView;->hideCaptureLayout()V

    .line 281
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 301
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 321
    :goto_0
    return v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 306
    goto :goto_0

    .line 309
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 311
    goto :goto_0

    .line 314
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 317
    goto :goto_0

    :cond_5
    move v0, v2

    .line 321
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 325
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 345
    :goto_0
    return v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 330
    goto :goto_0

    .line 333
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 335
    goto :goto_0

    .line 338
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 341
    goto :goto_0

    :cond_5
    move v0, v2

    .line 345
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 350
    iget-object p0, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onAddMeCancelled()V

    .line 352
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 356
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView;->showCaptureLayout()V

    .line 277
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AddMeView;->mbCapturedFirtstPerson:Z

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AddMeView;->isLeftPane:Z

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AddMeView;->setTouchHandled(Z)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView;->restoreMenu()V

    .line 115
    return-void
.end method

.method public setIsCapturedFirstPerson(Z)V
    .locals 1
    .parameter "bCaptured"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AddMeView;->mbCapturedFirtstPerson:Z

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->invalidate()V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AddMeView;->setTouchHandled(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 126
    iget-object p0, p0, Lcom/sec/android/app/camera/AddMeView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideTrayButton()V

    .line 131
    return-void
.end method

.method public setOnAddMeCancelListener(Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sec/android/app/camera/AddMeView;->mListener:Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;

    .line 298
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 256
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 252
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView;->hidePostCaptureLayout()V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mViewAddMeRect:Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->setVisibility(I)V

    .line 273
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 264
    return-void
.end method
