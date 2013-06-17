.class Lcom/sec/android/app/camera/ZoomButtonsController$6;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ZoomButtonsController;->refreshPositioningVariables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController$6;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$6;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    #calls: Lcom/sec/android/app/camera/ZoomButtonsController;->refreshPositioningVariables()V
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$700(Lcom/sec/android/app/camera/ZoomButtonsController;)V

    .line 469
    return-void
.end method
