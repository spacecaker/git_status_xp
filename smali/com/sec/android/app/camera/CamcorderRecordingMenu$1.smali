.class Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;
.super Landroid/os/Handler;
.source "CamcorderRecordingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderRecordingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stepSecond()V

    .line 92
    :cond_0
    return-void
.end method
