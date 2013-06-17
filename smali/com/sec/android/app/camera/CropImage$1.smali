.class Lcom/sec/android/app/camera/CropImage$1;
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


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 178
    return-void
.end method
