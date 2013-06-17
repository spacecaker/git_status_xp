.class Lcom/sec/android/app/camera/ReviewImage$3;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V
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
    .line 190
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$3;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$3;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    #calls: Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V
    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$100(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 193
    return-void
.end method
