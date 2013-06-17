.class Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;
.super Ljava/lang/Object;
.source "CamcorderBaseIndicators.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderBaseIndicators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderBaseIndicators;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    #getter for: Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLaunchIcon:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->access$000(Lcom/sec/android/app/camera/CamcorderBaseIndicators;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 50
    return-void
.end method
