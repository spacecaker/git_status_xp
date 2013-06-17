.class Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;
.super Ljava/lang/Object;
.source "CamcorderRecordingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #calls: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startPauseAnim()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$000(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    .line 99
    return-void
.end method
