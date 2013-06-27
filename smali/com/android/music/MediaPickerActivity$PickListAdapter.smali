.class Lcom/android/music/MediaPickerActivity$PickListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MediaPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickListAdapter"
.end annotation


# instance fields
.field mAlbumIdx:I

.field mArtistIdx:I

.field mMimeIdx:I

.field mTitleIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 233
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 235
    const-string v0, "title"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPickerActivity$PickListAdapter;->mTitleIdx:I

    .line 236
    const-string v0, "artist"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPickerActivity$PickListAdapter;->mArtistIdx:I

    .line 237
    const-string v0, "album"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPickerActivity$PickListAdapter;->mAlbumIdx:I

    .line 238
    const-string v0, "mime_type"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPickerActivity$PickListAdapter;->mMimeIdx:I

    .line 239
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const-string v6, "<unknown>"

    .line 261
    const v5, 0x7f0c001f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 262
    .local v4, tv:Landroid/widget/TextView;
    iget v5, p0, Lcom/android/music/MediaPickerActivity$PickListAdapter;->mTitleIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const v5, 0x7f0c0020

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 266
    .restart local v4       #tv:Landroid/widget/TextView;
    iget v5, p0, Lcom/android/music/MediaPickerActivity$PickListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    const-string v5, "<unknown>"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    :cond_0
    const v5, 0x7f090090

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :goto_0
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget v5, p0, Lcom/android/music/MediaPickerActivity$PickListAdapter;->mArtistIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    if-eqz v2, :cond_1

    const-string v5, "<unknown>"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 276
    :cond_1
    const v5, 0x7f090091

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget v5, p0, Lcom/android/music/MediaPickerActivity$PickListAdapter;->mMimeIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, text:Ljava/lang/String;
    const v5, 0x7f0c002e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 284
    .local v1, iv:Landroid/widget/ImageView;
    const-string v5, "audio/midi"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 285
    const v5, 0x7f020091

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    :goto_2
    return-void

    .line 271
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v3           #text:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 286
    .restart local v1       #iv:Landroid/widget/ImageView;
    .restart local v3       #text:Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_6

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "application/ogg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "application/x-ogg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 289
    :cond_5
    const v5, 0x7f020074

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 290
    :cond_6
    if-eqz v3, :cond_7

    const-string v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 291
    const v5, 0x7f020092

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 293
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x2

    .line 243
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 244
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0c002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 245
    .local v0, iv:Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 247
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 250
    const v4, 0x7f0c0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 251
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    const v4, 0x7f0c0035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #iv:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 253
    .restart local v0       #iv:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    return-object v3
.end method
