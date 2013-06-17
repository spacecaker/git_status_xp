.class public Lcom/sec/android/app/camera/VintageShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "VintageShotView.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/VintageShotView$ButtonSet;
    }
.end annotation


# instance fields
.field private buttonSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/VintageShotView$ButtonSet;",
            ">;"
        }
    .end annotation
.end field

.field private mTextStrings:[I

.field private mVintageModeText:Landroid/widget/TextView;

.field private mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 2
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/VintageShotView;->initTextStrings([I)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/VintageShotView;->setCaptureEnabled(Z)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/VintageShotView;->setTouchHandled(Z)V

    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/camera/VintageShotView;->init()V

    .line 70
    return-void

    .line 65
    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x7t 0x7ft
        0xb9t 0x0t 0x7t 0x7ft
        0xb7t 0x0t 0x7t 0x7ft
        0xb8t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private init()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageModeText:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/camera/VintageShotView;->populateButtonSet()V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/VintageShotView;->updateVintageText(I)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 83
    return-void
.end method

.method private varargs initTextStrings([I)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 155
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mTextStrings:[I

    .line 156
    iput-object p1, p0, Lcom/sec/android/app/camera/VintageShotView;->mTextStrings:[I

    .line 157
    return-void
.end method

.method private populateButtonSet()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    .line 133
    iget-object v7, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f02026c

    const v6, 0x7f02026d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;-><init>(Lcom/sec/android/app/camera/VintageShotView;IILcom/sec/android/app/camera/widget/TwImageButton;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v7, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f02026f

    const v6, 0x7f020270

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;-><init>(Lcom/sec/android/app/camera/VintageShotView;IILcom/sec/android/app/camera/widget/TwImageButton;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v7, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f020268

    const v6, 0x7f020269

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;-><init>(Lcom/sec/android/app/camera/VintageShotView;IILcom/sec/android/app/camera/widget/TwImageButton;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v7, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f02026a

    const v6, 0x7f02026b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;-><init>(Lcom/sec/android/app/camera/VintageShotView;IILcom/sec/android/app/camera/widget/TwImageButton;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 165
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v1, 0x1

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 122
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003f

    iget-object v3, p0, Lcom/sec/android/app/camera/VintageShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;

    .line 93
    .local v0, menu:Lcom/sec/android/app/camera/VintageShotSelectionMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->showMenu()V

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->setOnVintageChangedListener(Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    goto :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00f2
        :pswitch_0
    .end packed-switch
.end method

.method public updateVintageModeButton(II)V
    .locals 4
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 104
    iget-object v2, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/VintageShotView$ButtonSet;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    .line 108
    .local v0, buttonSet:Lcom/sec/android/app/camera/VintageShotView$ButtonSet;
    iget v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mMenuNumber:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mModeNumber:I

    if-ne v2, p2, :cond_0

    .line 109
    iget-object v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mNormalBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 111
    iget-object v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mClickedBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 113
    iget-object v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 117
    .end local v0           #buttonSet:Lcom/sec/android/app/camera/VintageShotView$ButtonSet;
    :cond_1
    return-void
.end method

.method public updateVintageText(I)V
    .locals 2
    .parameter "vintage"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageModeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mTextStrings:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    return-void
.end method
