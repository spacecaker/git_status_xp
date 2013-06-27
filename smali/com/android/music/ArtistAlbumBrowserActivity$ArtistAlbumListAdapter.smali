.class Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArtistAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;,
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mContext:Landroid/content/Context;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private final mFormatArgs3:[Ljava/lang/Object;

.field private mGroupAlbumIdx:I

.field private mGroupArtistIdIdx:I

.field private mGroupArtistIdx:I

.field private mGroupSongIdx:I

.field private mIndexer:Lcom/android/music/MusicAlphabetIndexer;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 10
    .parameter "context"
    .parameter "currentactivity"
    .parameter "cursor"
    .parameter "glayout"
    .parameter "gfrom"
    .parameter "gto"
    .parameter "clayout"
    .parameter "cfrom"
    .parameter "cto"

    .prologue
    .line 778
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 745
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 746
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    .line 779
    iput-object p2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    .line 780
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 782
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 783
    .local v9, r:Landroid/content/res/Resources;
    const v0, 0x7f02008d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 784
    const v0, 0x7f020003

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 786
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 787
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 789
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mContext:Landroid/content/Context;

    .line 790
    invoke-direct {p0, p3}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 791
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 792
    const v0, 0x7f0900ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 793
    const v0, 0x7f090090

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 794
    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 795
    return-void
.end method

.method static synthetic access$400(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/android/music/ArtistAlbumBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 798
    if-eqz p1, :cond_0

    .line 801
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdIdx:I

    .line 802
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    .line 803
    const-string v1, "number_of_albums"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupAlbumIdx:I

    .line 804
    const-string v1, "number_of_tracks"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupSongIdx:I

    .line 805
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/android/music/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    new-instance v1, Lcom/android/music/MusicAlphabetIndexer;

    iget v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 812
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 813
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 23
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "islast"

    .prologue
    .line 892
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 894
    .local v20, vh:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const-string v21, "album"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 895
    .local v16, name:Ljava/lang/String;
    move-object/from16 v14, v16

    .line 896
    .local v14, displayname:Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string v21, "<unknown>"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    :cond_0
    const/16 v21, 0x1

    move/from16 v19, v21

    .line 897
    .local v19, unknown:Z
    :goto_0
    if-eqz v19, :cond_1

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    move-object v14, v0

    .line 900
    :cond_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    const-string v21, "numsongs"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 903
    .local v18, numsongs:I
    const-string v21, "numsongs_by_artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 905
    .local v17, numartistsongs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    move-object v10, v0

    .line 906
    .local v10, builder:Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 907
    if-eqz v19, :cond_2

    .line 908
    move/from16 v18, v17

    .line 911
    :cond_2
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 912
    const v21, 0x7f09005c

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :goto_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object v15, v0

    .line 934
    .local v15, iv:Landroid/widget/ImageView;
    const-string v21, "album_art"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 936
    .local v7, art:Ljava/lang/String;
    if-nez v19, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_7

    .line 937
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v21, v0

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 938
    const/16 v21, 0x0

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 945
    :goto_2
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v11

    .line 946
    .local v11, currentalbumid:J
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 947
    .local v4, aid:J
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    move-object v15, v0

    .line 948
    cmp-long v21, v11, v4

    if-nez v21, :cond_8

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    :goto_3
    return-void

    .line 896
    .end local v4           #aid:J
    .end local v7           #art:Ljava/lang/String;
    .end local v10           #builder:Ljava/lang/StringBuilder;
    .end local v11           #currentalbumid:J
    .end local v15           #iv:Landroid/widget/ImageView;
    .end local v17           #numartistsongs:I
    .end local v18           #numsongs:I
    .end local v19           #unknown:Z
    :cond_4
    const/16 v21, 0x0

    move/from16 v19, v21

    goto/16 :goto_0

    .line 914
    .restart local v10       #builder:Ljava/lang/StringBuilder;
    .restart local v17       #numartistsongs:I
    .restart local v18       #numsongs:I
    .restart local v19       #unknown:Z
    :cond_5
    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    move-object v6, v0

    .line 916
    .local v6, args:[Ljava/lang/Object;
    const/16 v21, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v21

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0a0003

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v18

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 919
    .end local v6           #args:[Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    move-object v6, v0

    .line 920
    .restart local v6       #args:[Ljava/lang/Object;
    const/16 v21, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v21

    .line 921
    const/16 v21, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v21

    .line 922
    const/16 v21, 0x2

    const-string v22, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v6, v21

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0a0004

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v18

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 940
    .end local v6           #args:[Ljava/lang/Object;
    .restart local v7       #art:Ljava/lang/String;
    .restart local v15       #iv:Landroid/widget/ImageView;
    :cond_7
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 941
    .local v8, artIndex:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-wide v1, v8

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/MusicUtils;->getCachedArtwork(Landroid/content/Context;JLandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 942
    .local v13, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 951
    .end local v8           #artIndex:J
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    .restart local v4       #aid:J
    .restart local v11       #currentalbumid:J
    :cond_8
    const/16 v21, 0x0

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isexpanded"

    .prologue
    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 864
    .local v14, vh:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    move v15, v0

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 865
    .local v4, artist:Ljava/lang/String;
    move-object v9, v4

    .line 866
    .local v9, displayartist:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v15, "<unknown>"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_0
    const/4 v15, 0x1

    move v13, v15

    .line 867
    .local v13, unknown:Z
    :goto_0
    if-eqz v13, :cond_1

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    move-object v9, v0

    .line 870
    :cond_1
    iget-object v15, v14, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupAlbumIdx:I

    move v15, v0

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 873
    .local v10, numalbums:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupSongIdx:I

    move v15, v0

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 875
    .local v11, numsongs:I
    move-object/from16 v0, p2

    move v1, v10

    move v2, v11

    move v3, v13

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/MusicUtils;->makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v12

    .line 878
    .local v12, songs_albums:Ljava/lang/String;
    iget-object v15, v14, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentArtistId()J

    move-result-wide v7

    .line 881
    .local v7, currentartistid:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdIdx:I

    move v15, v0

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 882
    .local v5, artistid:J
    cmp-long v15, v7, v5

    if-nez v15, :cond_3

    if-nez p4, :cond_3

    .line 883
    iget-object v15, v14, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 887
    :goto_1
    return-void

    .line 866
    .end local v5           #artistid:J
    .end local v7           #currentartistid:J
    .end local v10           #numalbums:I
    .end local v11           #numsongs:I
    .end local v12           #songs_albums:Ljava/lang/String;
    .end local v13           #unknown:Z
    :cond_2
    const/4 v15, 0x0

    move v13, v15

    goto :goto_0

    .line 885
    .restart local v5       #artistid:J
    .restart local v7       #currentartistid:J
    .restart local v10       #numalbums:I
    .restart local v11       #numsongs:I
    .restart local v12       #songs_albums:Ljava/lang/String;
    .restart local v13       #unknown:Z
    :cond_3
    iget-object v15, v14, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1025
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1026
    const/4 p1, 0x0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$600(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    #setter for: Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$602(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1030
    invoke-direct {p0, p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1031
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1033
    :cond_1
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9
    .parameter "groupCursor"

    .prologue
    const/4 v3, 0x0

    const-string v4, "_id"

    .line 959
    const-string v0, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 961
    .local v7, id:J
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "numsongs"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "numsongs_by_artist"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 968
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    const-string v1, "external"

    invoke-static {v1, v7, v8}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "album_key"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 973
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v0, v3

    .line 1019
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;

    iget v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v6, v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1058
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/music/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 847
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 848
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>()V

    .line 849
    .local v1, vh:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v2, 0x7f0c001f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 850
    const v2, 0x7f0c0020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 851
    const v2, 0x7f0c0035

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 852
    const v2, 0x7f0c002e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 853
    iget-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 854
    iget-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 855
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 856
    return-object v0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    const v5, 0x7f0c002e

    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 829
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 830
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 831
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 832
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 833
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 834
    new-instance v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>()V

    .line 835
    .local v3, vh:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v4, 0x7f0c001f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 836
    const v4, 0x7f0c0020

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 837
    const v4, 0x7f0c0035

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 838
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 839
    iget-object v4, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v6, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 840
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 841
    return-object v2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 1037
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1041
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1046
    :goto_0
    return-object v2

    .line 1043
    :cond_2
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1044
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1045
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 1046
    goto :goto_0
.end method

.method public setActivity(Lcom/android/music/ArtistAlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    .line 821
    return-void
.end method
