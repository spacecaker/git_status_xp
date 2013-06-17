.class public Lcom/sec/android/app/camera/ShutterButton;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ShutterButton$ButtonSet;
    }
.end annotation


# instance fields
.field private buttonSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/ShutterButton$ButtonSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContinousProgressing:Z

.field private mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 2
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->buttonSetList:Ljava/util/List;

    .line 68
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ShutterButton;->setCaptureEnabled(Z)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ShutterButton;->setTouchHandled(Z)V

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/ShutterButton;->init()V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 73
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/camera/ShutterButton;->populateButtonSet()V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShutterButton;->initializeButtons()V

    .line 99
    return-void
.end method

.method private populateButtonSet()V
    .locals 8

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/camera/ShutterButton;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v4, 0x7f0201db

    const v5, 0x7f0201dc

    const v6, 0x7f0201da

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;-><init>(Lcom/sec/android/app/camera/ShutterButton;ILcom/sec/android/app/camera/widget/TwImageButton;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v7, p0, Lcom/sec/android/app/camera/ShutterButton;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v4, 0x7f0201cc

    const v5, 0x7f0201cd

    const v6, 0x7f0201cb

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;-><init>(Lcom/sec/android/app/camera/ShutterButton;ILcom/sec/android/app/camera/widget/TwImageButton;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public hideTrayButton()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public initializeButtons()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ShutterButton;->updateButton(I)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ShutterButton;->updateButton(I)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShutterButton;->setButtonLocked()V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShutterButton;->setButtonUnlocked()V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00d0

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1b

    const/4 v1, 0x1

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ShutterButton;->mContinousProgressing:Z

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mContinousProgressing:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mContinousProgressing:Z

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 178
    :cond_1
    return-void
.end method

.method public setButtonUnlocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 186
    :cond_1
    return-void
.end method

.method public setSutterButtonSoundOff()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 216
    return-void
.end method

.method public showTrayButton()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public updateButton(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 144
    iget-object v2, p0, Lcom/sec/android/app/camera/ShutterButton;->buttonSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/ShutterButton$ButtonSet;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;

    .line 148
    .local v0, buttonSet:Lcom/sec/android/app/camera/ShutterButton$ButtonSet;
    iget v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mMode:I

    if-ne v2, p1, :cond_0

    .line 149
    iget-object v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mNormalBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 150
    iget-object v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mClickedBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 151
    iget-object v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mDimmedBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmedImage(I)V

    .line 152
    iget-object v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 156
    .end local v0           #buttonSet:Lcom/sec/android/app/camera/ShutterButton$ButtonSet;
    :cond_1
    return-void
.end method
