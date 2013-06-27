.class Lcom/android/music/DeleteItems$2;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/DeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/DeleteItems;


# direct methods
.method constructor <init>(Lcom/android/music/DeleteItems;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    iget-object v1, p0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    #getter for: Lcom/android/music/DeleteItems;->mItemList:[J
    invoke-static {v1}, Lcom/android/music/DeleteItems;->access$000(Lcom/android/music/DeleteItems;)[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    .line 90
    iget-object v0, p0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    invoke-virtual {v0}, Lcom/android/music/DeleteItems;->finish()V

    .line 91
    return-void
.end method
