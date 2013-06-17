.class public Lcom/sec/android/app/camera/MenuBase;
.super Ljava/lang/Object;
.source "MenuBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field protected mBaseView:Landroid/view/ViewGroup;

.field public mBaseViewId:I

.field private mCaptureEnabled:Z

.field protected mChild:Lcom/sec/android/app/camera/MenuBase;

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mLayoutId:I

.field protected mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

.field private mPreviewTouchEnabled:Z

.field private mVisibility:Z

.field protected mZorder:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 4
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 39
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 40
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 42
    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 43
    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 67
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    .line 68
    iput p3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    .line 69
    iput-object p5, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 70
    iput p6, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 71
    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    invoke-virtual {v1, v2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, baseView:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 80
    return-void
.end method


# virtual methods
.method public final getVisibility()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    return v0
.end method

.method public final getZorder()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public hideMenu()V
    .locals 3

    .prologue
    .line 88
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, baseView:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 94
    .end local v0           #baseView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 99
    return-void
.end method

.method public final isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    return v0
.end method

.method public final isFullScreen()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a3

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 166
    :cond_0
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public restoreMenu()V
    .locals 3

    .prologue
    .line 102
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, baseView:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 108
    .end local v0           #baseView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 113
    return-void
.end method

.method protected setCaptureEnabled(Z)V
    .locals 0
    .parameter "capture"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 161
    return-void
.end method

.method public final setChild(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 137
    return-void
.end method

.method protected setTouchHandled(Z)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 157
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->pushMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 85
    return-void
.end method
