.class Lcom/sec/android/app/music/DrmServicePopup$2;
.super Ljava/lang/Object;
.source "DrmServicePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 217
    iput-object p1, p0, Lcom/sec/android/app/music/DrmServicePopup$2;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 219
    invoke-static {}, Lcom/sec/android/app/music/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDeleteListener:onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v2, 0x1

    new-array v1, v2, [J

    .line 223
    .local v1, list:[J
    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup$2;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->mId:J
    invoke-static {v2}, Lcom/sec/android/app/music/DrmServicePopup;->access$300(Lcom/sec/android/app/music/DrmServicePopup;)J

    move-result-wide v2

    aput-wide v2, v1, v5

    .line 224
    invoke-static {}, Lcom/sec/android/app/music/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE Tracks_list[0] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup$2;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/music/DrmServicePopup;->access$100(Lcom/sec/android/app/music/DrmServicePopup;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/music/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v2, "QueryBrowserActivity.DeleteItems"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, deleteIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup$2;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/music/DrmServicePopup;->access$100(Lcom/sec/android/app/music/DrmServicePopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup$2;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    invoke-virtual {v2}, Lcom/sec/android/app/music/DrmServicePopup;->dismiss()V

    .line 230
    return-void
.end method
