.class Lcom/sec/android/app/camera/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    iput-object p2, p0, Lcom/sec/android/app/camera/CropImage$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/CropImage$4$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/CropImage$4$1;-><init>(Lcom/sec/android/app/camera/CropImage$4;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 240
    return-void
.end method
