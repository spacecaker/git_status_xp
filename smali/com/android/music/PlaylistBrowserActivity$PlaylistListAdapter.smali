.class Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/PlaylistBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mIdIdx:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTitleIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 787
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 761
    iput-object v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    .line 763
    iput-object v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    .line 788
    iput-object p2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    .line 789
    invoke-direct {p0, p4}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 790
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;-><init>(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 791
    return-void
.end method

.method static synthetic access$500(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 793
    if-eqz p1, :cond_0

    .line 795
    :try_start_0
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    .line 796
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 799
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x2

    .line 815
    const v6, 0x7f0c001f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 817
    .local v5, tv:Landroid/widget/TextView;
    iget v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 818
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 822
    .local v0, id:J
    const v6, 0x7f0c002e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 823
    .local v2, iv:Landroid/widget/ImageView;
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    .line 824
    const v6, 0x7f02003e

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 828
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 829
    .local v4, p:Landroid/view/ViewGroup$LayoutParams;
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 830
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 832
    const v6, 0x7f0c0035

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #iv:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 833
    .restart local v2       #iv:Landroid/widget/ImageView;
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 835
    const v6, 0x7f0c0020

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 836
    return-void

    .line 826
    .end local v4           #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const v6, 0x7f02003d

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 841
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 842
    const/4 p1, 0x0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity;->access$800(Lcom/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    #setter for: Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/music/PlaylistBrowserActivity;->access$802(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 846
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 847
    invoke-direct {p0, p1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 849
    :cond_1
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 853
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 857
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 862
    :goto_0
    return-object v2

    .line 859
    :cond_2
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/android/music/PlaylistBrowserActivity;->access$400(Lcom/android/music/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 860
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 861
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 862
    goto :goto_0
.end method

.method public setActivity(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    .line 806
    return-void
.end method
