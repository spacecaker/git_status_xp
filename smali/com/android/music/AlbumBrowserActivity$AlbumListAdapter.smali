.class Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;,
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/AlbumBrowserActivity;

.field private mAlbumArtIndex:I

.field private mAlbumIdx:I

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private mArtistIdx:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    .line 712
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 681
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 686
    iput-boolean v8, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    .line 714
    iput-object p2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    .line 715
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;-><init>(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 717
    const v0, 0x7f090090

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 718
    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 719
    const v0, 0x7f0900ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 721
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 722
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f02008d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 724
    const v0, 0x7f020003

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 725
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 727
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 729
    invoke-direct {p0, p4}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 730
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 731
    return-void
.end method

.method static synthetic access$400(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/android/music/AlbumBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 734
    if-eqz p1, :cond_0

    .line 736
    :try_start_0
    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    .line 737
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    .line 738
    const-string v1, "album_art"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    .line 740
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v1, :cond_1

    .line 741
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    new-instance v1, Lcom/android/music/MusicAlphabetIndexer;

    iget v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 748
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 780
    .local v10, vh:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    iget v11, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 781
    .local v8, name:Ljava/lang/String;
    move-object v6, v8

    .line 782
    .local v6, displayname:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v11, "<unknown>"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_0
    const/4 v11, 0x1

    move v9, v11

    .line 783
    .local v9, unknown:Z
    :goto_0
    if-eqz v9, :cond_1

    .line 784
    iget-object v6, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 786
    :cond_1
    iget-object v11, v10, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget v11, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 789
    move-object v6, v8

    .line 790
    if-eqz v8, :cond_2

    const-string v11, "<unknown>"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 791
    :cond_2
    iget-object v6, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 793
    :cond_3
    iget-object v11, v10, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v7, v10, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 798
    .local v7, iv:Landroid/widget/ImageView;
    iget v11, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, art:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 800
    .local v0, aid:J
    if-nez v9, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_6

    .line 801
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    :goto_1
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v3

    .line 808
    .local v3, currentalbumid:J
    iget-object v7, v10, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 809
    cmp-long v11, v3, v0

    if-nez v11, :cond_7

    .line 810
    iget-object v11, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    :goto_2
    return-void

    .line 782
    .end local v0           #aid:J
    .end local v2           #art:Ljava/lang/String;
    .end local v3           #currentalbumid:J
    .end local v7           #iv:Landroid/widget/ImageView;
    .end local v9           #unknown:Z
    :cond_5
    const/4 v11, 0x0

    move v9, v11

    goto :goto_0

    .line 803
    .restart local v0       #aid:J
    .restart local v2       #art:Ljava/lang/String;
    .restart local v7       #iv:Landroid/widget/ImageView;
    .restart local v9       #unknown:Z
    :cond_6
    iget-object v11, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p2, v0, v1, v11}, Lcom/android/music/MusicUtils;->getCachedArtwork(Landroid/content/Context;JLandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 804
    .local v5, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 812
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #currentalbumid:J
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 819
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 820
    const/4 p1, 0x0

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/music/AlbumBrowserActivity;->access$500(Lcom/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    #setter for: Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/music/AlbumBrowserActivity;->access$502(Lcom/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 824
    invoke-direct {p0, p1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 825
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 827
    :cond_1
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 852
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 763
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;-><init>()V

    .line 765
    .local v1, vh:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    const v2, 0x7f0c001f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 766
    const v2, 0x7f0c0020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 767
    const v2, 0x7f0c0035

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 768
    const v2, 0x7f0c002e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 769
    iget-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    iget-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 771
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 772
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 831
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 835
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 840
    :goto_0
    return-object v2

    .line 837
    :cond_2
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/android/music/AlbumBrowserActivity;->access$200(Lcom/android/music/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 838
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 839
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 840
    goto :goto_0
.end method

.method public setActivity(Lcom/android/music/AlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    .line 755
    return-void
.end method
