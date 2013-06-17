.class Lcom/sec/android/app/camera/AbstractCameraActivity$ErrorActivity$1;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity$ErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity$ErrorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity$ErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$ErrorActivity$1;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity$ErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$ErrorActivity$1;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity$ErrorActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity$ErrorActivity;->finish()V

    .line 886
    return-void
.end method
