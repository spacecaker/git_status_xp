.class Lcom/android/music/RenamePlaylist$2;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/RenamePlaylist;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/RenamePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v0}, Lcom/android/music/RenamePlaylist;->finish()V

    .line 99
    return-void
.end method
