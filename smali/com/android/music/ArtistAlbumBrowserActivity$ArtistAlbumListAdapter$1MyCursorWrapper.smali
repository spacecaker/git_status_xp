.class Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCursorWrapper"
.end annotation


# instance fields
.field mArtistName:Ljava/lang/String;

.field mMagicColumnIdx:I

.field final synthetic this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "c"
    .parameter "artist"

    .prologue
    .line 981
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 982
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 983
    iput-object p3, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    .line 984
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    const-string v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    :cond_0
    #getter for: Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$500(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    .line 987
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    .line 988
    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 1016
    invoke-super {p0}, Landroid/database/CursorWrapper;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 1000
    const-string v0, "artist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    .line 1003
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1008
    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    if-eq p1, v0, :cond_0

    .line 1009
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "artist"

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 992
    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    if-eq p1, v0, :cond_0

    .line 993
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 995
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    goto :goto_0
.end method
