.class Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;,
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/TrackBrowserActivity;

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mDisableNowPlayingIndicator:Z

.field mDurationIdx:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field private mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 7
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "disablenowplayingindicator"

    .prologue
    const/4 v6, 0x0

    .line 1826
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1757
    iput-object v6, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1759
    iput-object v6, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 1827
    iput-object p2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1828
    invoke-direct {p0, p4}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1829
    iput-boolean p7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    .line 1830
    iput-boolean p8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 1831
    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1832
    const v0, 0x7f090090

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1834
    new-instance v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;-><init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    .line 1835
    return-void
.end method

.method static synthetic access$1000(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 1846
    if-eqz p1, :cond_0

    .line 1848
    :try_start_0
    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 1849
    const-string v3, "artist"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 1850
    const-string v3, "duration"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1852
    :try_start_1
    const-string v3, "audio_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1858
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v3, :cond_1

    .line 1859
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v3, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 1870
    :cond_0
    :goto_1
    return-void

    .line 1854
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1855
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1865
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1867
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1860
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity;->access$800(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity;->access$1200(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1861
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    const v4, 0x7f090040

    invoke-virtual {v3, v4}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1863
    .local v0, alpha:Ljava/lang/String;
    new-instance v3, Lcom/android/music/MusicAlphabetIndexer;

    iget v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    invoke-direct {v3, p1, v4, v0}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x0

    .line 1900
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1902
    .local v7, vh:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    iget v8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    iget-object v9, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v8, v9}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1903
    iget-object v8, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v9, v9, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v10, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v10, v10, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v8, v9, v11, v10}, Landroid/widget/TextView;->setText([CII)V

    .line 1905
    iget v8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    div-int/lit16 v6, v8, 0x3e8

    .line 1906
    .local v6, secs:I
    if-nez v6, :cond_5

    .line 1907
    iget-object v8, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1912
    :goto_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1913
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v11, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1915
    iget v8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1916
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v8, "<unknown>"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1917
    :cond_0
    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1922
    .local v4, len:I
    iget-object v8, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v8, v8

    if-ge v8, v4, :cond_1

    .line 1923
    new-array v8, v4, [C

    iput-object v8, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 1925
    :cond_1
    iget-object v8, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v0, v11, v4, v8, v11}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 1926
    iget-object v8, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v8, v9, v11, v4}, Landroid/widget/TextView;->setText([CII)V

    .line 1928
    iget-object v3, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 1929
    .local v3, iv:Landroid/widget/ImageView;
    const-wide/16 v1, -0x1

    .line 1930
    .local v1, id:J
    sget-object v8, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v8, :cond_2

    .line 1933
    :try_start_0
    iget-boolean v8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v8, :cond_7

    .line 1934
    sget-object v8, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v1, v8

    .line 1953
    :cond_2
    :goto_2
    iget-boolean v8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v8, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v8, v1

    if-eqz v8, :cond_4

    :cond_3
    iget-boolean v8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    if-nez v8, :cond_8

    iget v8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, v1

    if-nez v8, :cond_8

    .line 1955
    :cond_4
    const v8, 0x7f02008d

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1956
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1960
    :goto_3
    return-void

    .line 1909
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #id:J
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #len:I
    .end local v5           #name:Ljava/lang/String;
    :cond_5
    iget-object v8, v7, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v9, v6

    invoke-static {p2, v9, v10}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1919
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v5       #name:Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1936
    .restart local v1       #id:J
    .restart local v3       #iv:Landroid/widget/ImageView;
    .restart local v4       #len:I
    :cond_7
    :try_start_1
    sget-object v8, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    goto :goto_2

    .line 1958
    :cond_8
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1938
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1965
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1966
    const/4 p1, 0x0

    .line 1968
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$400(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1969
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #setter for: Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/music/TrackBrowserActivity;->access$402(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1970
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1971
    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1973
    :cond_1
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "section"

    .prologue
    .line 2000
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 2001
    .local v0, pos:I
    return v0
.end method

.method public getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2005
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 1995
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1874
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1875
    .local v1, v:Landroid/view/View;
    const v3, 0x7f0c002e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1878
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity;->access$800(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1879
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1880
    const v3, 0x7f020031

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1886
    :goto_0
    new-instance v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>()V

    .line 1887
    .local v2, vh:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    const v3, 0x7f0c001f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 1888
    const v3, 0x7f0c0020

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 1889
    const v3, 0x7f0c0034

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 1890
    const v3, 0x7f0c0035

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 1891
    new-instance v3, Landroid/database/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v3, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1892
    const/16 v3, 0xc8

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 1893
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1894
    return-object v1

    .line 1882
    .end local v2           #vh:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    .restart local p0
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 1977
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1978
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1981
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1986
    :goto_0
    return-object v2

    .line 1983
    :cond_2
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    const/4 v4, 0x0

    #calls: Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v2, v3, v1, v4}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1984
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1985
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 1986
    goto :goto_0
.end method

.method public setActivity(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1839
    return-void
.end method
