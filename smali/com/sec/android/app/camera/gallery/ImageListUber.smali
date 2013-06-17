.class public Lcom/sec/android/app/camera/gallery/ImageListUber;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImageList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/gallery/ImageListUber$1;,
        Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;,
        Lcom/sec/android/app/camera/gallery/ImageListUber$AscendingComparator;,
        Lcom/sec/android/app/camera/gallery/ImageListUber$DescendingComparator;
    }
.end annotation


# instance fields
.field private mLastListIndex:I

.field private final mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipCounts:[I

.field private mSkipList:[J

.field private mSkipListSize:I

.field private final mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;


# direct methods
.method public constructor <init>([Lcom/sec/android/app/camera/gallery/IImageList;I)V
    .locals 8
    .parameter "sublist"
    .parameter "sort"

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, [Lcom/sec/android/app/camera/gallery/IImageList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sec/android/app/camera/gallery/IImageList;

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    .line 55
    new-instance v4, Ljava/util/PriorityQueue;

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    new-instance v6, Lcom/sec/android/app/camera/gallery/ImageListUber$AscendingComparator;

    invoke-direct {v6, v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$AscendingComparator;-><init>(Lcom/sec/android/app/camera/gallery/ImageListUber$1;)V

    :goto_0
    invoke-direct {v4, v5, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    .line 59
    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    .line 60
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    .line 61
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    .line 62
    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    .line 63
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v2, v4

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 65
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    aget-object v1, v4, v0

    .line 66
    .local v1, list:Lcom/sec/android/app/camera/gallery/IImageList;
    new-instance v3, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    invoke-direct {v3, v1, v0}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;-><init>(Lcom/sec/android/app/camera/gallery/IImageList;I)V

    .line 67
    .local v3, slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    .end local v0           #i:I
    .end local v1           #list:Lcom/sec/android/app/camera/gallery/IImageList;
    .end local v2           #n:I
    .end local v3           #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_1
    new-instance v6, Lcom/sec/android/app/camera/gallery/ImageListUber$DescendingComparator;

    invoke-direct {v6, v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$DescendingComparator;-><init>(Lcom/sec/android/app/camera/gallery/ImageListUber$1;)V

    goto :goto_0

    .line 69
    .restart local v0       #i:I
    .restart local v2       #n:I
    :cond_2
    return-void
.end method

.method private modifySkipCountForDeletedImage(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v1, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 178
    iget-object v6, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v4, v6, v0

    .line 179
    .local v4, v:J
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    long-to-int v2, v6

    .line 180
    .local v2, offset:I
    add-int v6, v3, v2

    if-le v6, p1, :cond_1

    .line 181
    iget-object v6, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    const-wide/16 v7, 0x1

    sub-long v7, v4, v7

    aput-wide v7, v6, v0

    .line 186
    .end local v2           #offset:I
    .end local v4           #v:J
    :cond_0
    return-void

    .line 184
    .restart local v2       #offset:I
    .restart local v4       #v:J
    :cond_1
    add-int/2addr v3, v2

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nextMergeSlot()Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v5, 0x0

    .line 144
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    .line 145
    .local v1, slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    if-nez v1, :cond_0

    const/4 v3, 0x0

    .line 158
    :goto_0
    return-object v3

    .line 146
    :cond_0
    iget v3, v1, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    if-ne v3, v4, :cond_1

    .line 147
    iget v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 148
    .local v0, lastIndex:I
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v4, v3, v0

    add-long/2addr v4, v8

    aput-wide v4, v3, v0

    .end local v0           #lastIndex:I
    :goto_1
    move-object v3, v1

    .line 158
    goto :goto_0

    .line 150
    :cond_1
    iget v3, v1, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iput v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    .line 151
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    array-length v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    if-ne v3, v4, :cond_2

    .line 152
    iget v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [J

    .line 153
    .local v2, temp:[J
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v2, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    .line 156
    .end local v2           #temp:[J
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    iget v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v5, v8

    aput-wide v5, v3, v4

    goto :goto_1
.end method

.method private removeImage(Lcom/sec/android/app/camera/gallery/IImage;I)Z
    .locals 2
    .parameter "image"
    .parameter "index"

    .prologue
    .line 189
    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->getContainer()Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    .line 190
    .local v0, list:Lcom/sec/android/app/camera/gallery/IImageList;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/gallery/ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 192
    const/4 v1, 0x1

    .line 194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, count:I
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    .local v0, arr$:[Lcom/sec/android/app/camera/gallery/IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 82
    .local v4, subList:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v4           #subList:Lcom/sec/android/app/camera/gallery/IImageList;
    :cond_0
    return v1
.end method

.method public getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 14
    .parameter "index"

    .prologue
    .line 100
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getCount()I

    move-result v11

    if-le p1, v11, :cond_1

    .line 101
    :cond_0
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " out of range max is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 105
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    .line 108
    .local v5, skipCounts:[I
    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 114
    const/4 v4, 0x0

    .line 118
    .local v4, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v1, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 119
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v8, v11, v0

    .line 121
    .local v8, v:J
    const-wide/16 v11, -0x1

    and-long/2addr v11, v8

    long-to-int v2, v11

    .line 122
    .local v2, offset:I
    const/16 v11, 0x20

    shr-long v11, v8, v11

    long-to-int v10, v11

    .line 123
    .local v10, which:I
    add-int v11, v4, v2

    if-le v11, p1, :cond_2

    .line 124
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v11, v11, v10

    sub-int v12, p1, v4

    add-int v7, v11, v12

    .line 125
    .local v7, subindex:I
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    aget-object v11, v11, v10

    invoke-interface {v11, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v11

    .line 137
    .end local v2           #offset:I
    .end local v7           #subindex:I
    .end local v8           #v:J
    .end local v10           #which:I
    :goto_1
    return-object v11

    .line 127
    .restart local v2       #offset:I
    .restart local v8       #v:J
    .restart local v10       #which:I
    :cond_2
    add-int/2addr v4, v2

    .line 128
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v12, v11, v10

    add-int/2addr v12, v2

    aput v12, v11, v10

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v2           #offset:I
    .end local v8           #v:J
    .end local v10           #which:I
    .local v6, slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 132
    .end local v6           #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->nextMergeSlot()Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v6

    .line 133
    .restart local v6       #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    if-nez v6, :cond_6

    const/4 v11, 0x0

    goto :goto_1

    .line 134
    :cond_6
    if-ne v4, p1, :cond_3

    .line 135
    iget-object v3, v6, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    .line 136
    .local v3, result:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v11, v3

    .line 137
    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 6
    .parameter "uri"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    .local v0, arr$:[Lcom/sec/android/app/camera/gallery/IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 163
    .local v4, sublist:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 164
    .local v2, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    move-object v5, v2

    .line 166
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v4           #sublist:Lcom/sec/android/app/camera/gallery/IImageList;
    :goto_1
    return-object v5

    .line 162
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    .restart local v4       #sublist:Lcom/sec/android/app/camera/gallery/IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v4           #sublist:Lcom/sec/android/app/camera/gallery/IImageList;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I
    .locals 14
    .parameter "image"

    .prologue
    const/4 v13, -0x1

    .line 208
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->getContainer()Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    .line 209
    .local v1, list:Lcom/sec/android/app/camera/gallery/IImageList;
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-static {v11, v1}, Lcom/sec/android/app/camera/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 210
    .local v2, listIndex:I
    if-ne v2, v13, :cond_0

    .line 211
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v1           #list:Lcom/sec/android/app/camera/gallery/IImageList;
    .end local v2           #listIndex:I
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 213
    .restart local v1       #list:Lcom/sec/android/app/camera/gallery/IImageList;
    .restart local v2       #listIndex:I
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v3

    .line 216
    .local v3, listOffset:I
    const/4 v6, 0x0

    .line 217
    .local v6, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    .local v4, n:I
    :goto_0
    if-ge v0, v4, :cond_5

    .line 218
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v8, v11, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .local v8, value:J
    const-wide/16 v11, -0x1

    and-long/2addr v11, v8

    long-to-int v5, v11

    .line 220
    .local v5, offset:I
    const/16 v11, 0x20

    shr-long v11, v8, v11

    long-to-int v10, v11

    .line 221
    .local v10, which:I
    if-ne v10, v2, :cond_2

    .line 222
    if-ge v3, v5, :cond_1

    .line 223
    add-int v11, v6, v3

    .line 235
    .end local v5           #offset:I
    .end local v8           #value:J
    .end local v10           #which:I
    :goto_1
    monitor-exit p0

    return v11

    .line 225
    .restart local v5       #offset:I
    .restart local v8       #value:J
    .restart local v10       #which:I
    :cond_1
    sub-int/2addr v3, v5

    .line 227
    :cond_2
    add-int/2addr v6, v5

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v5           #offset:I
    .end local v8           #value:J
    .end local v10           #which:I
    .local v7, slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_3
    :try_start_2
    invoke-virtual {v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 231
    .end local v7           #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->nextMergeSlot()Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v7

    .line 232
    .restart local v7       #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    if-nez v7, :cond_6

    move v11, v13

    goto :goto_1

    .line 233
    :cond_6
    iget-object v11, v7, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-ne v11, p1, :cond_3

    .line 234
    invoke-virtual {v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    move v11, v6

    .line 235
    goto :goto_1
.end method

.method public removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;I)Z

    move-result v0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 203
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 204
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/gallery/ImageListUber;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;I)Z

    move-result v1

    goto :goto_0
.end method
