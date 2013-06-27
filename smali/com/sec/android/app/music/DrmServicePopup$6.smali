.class Lcom/sec/android/app/music/DrmServicePopup$6;
.super Ljava/lang/Object;
.source "DrmServicePopup.java"

# interfaces
.implements Landroid/drm/mobile2/OMADRMManager$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/DrmServicePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/DrmServicePopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/DrmServicePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sec/android/app/music/DrmServicePopup$6;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)Z
    .locals 4
    .parameter "errorCode"

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-static {}, Lcom/sec/android/app/music/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup$6;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/music/DrmServicePopup;->access$100(Lcom/sec/android/app/music/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup$6;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/DrmServicePopup;->access$100(Lcom/sec/android/app/music/DrmServicePopup;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    return v3
.end method
