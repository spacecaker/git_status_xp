.class Lcom/sec/android/app/camera/ReviewImage$9;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ReviewImage;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ReviewImage;

.field final synthetic val$fv:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ReviewImage;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$9;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iput-object p2, p0, Lcom/sec/android/app/camera/ReviewImage$9;->val$fv:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$9;->val$fv:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 810
    return-void
.end method
