.class Lcom/sec/android/app/camera/ReviewImage$6;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ReviewImage;->setupOnTouchListeners(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ReviewImage;

.field final synthetic val$buttonListener:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ReviewImage;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$6;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iput-object p2, p0, Lcom/sec/android/app/camera/ReviewImage$6;->val$buttonListener:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$6;->val$buttonListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$6;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    #getter for: Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;
    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/ImageViewTouch2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$6;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v0, v0, Lcom/sec/android/app/camera/ReviewImage;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
