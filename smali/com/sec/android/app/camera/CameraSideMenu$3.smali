.class Lcom/sec/android/app/camera/CameraSideMenu$3;
.super Ljava/lang/Object;
.source "CameraSideMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraSideMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSideMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSideMenu$3;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu$3;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu$3;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu$3;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu$3;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu$3;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu$3;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object p0, v0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 132
    return-void
.end method
