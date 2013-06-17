.class Lcom/sec/android/app/camera/ReviewImage$1;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ReviewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ReviewImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$1;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$1;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    #calls: Lcom/sec/android/app/camera/ReviewImage;->hideOnScreenControls()V
    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$000(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 101
    return-void
.end method
