.class public final Landroid/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 504
    iput-object p1, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 505
    return-void
.end method

.method static synthetic access$0(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 535
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    invoke-direct {v1, p0, p3, p4, p5}, Landroid/content/ContentService$ObserverNode$ObserverEntry;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 541
    if-nez v1, :cond_1

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Uri ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") used for observer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 545
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-lt v3, v2, :cond_2

    .line 554
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    invoke-direct {v0, v1}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;)V

    goto :goto_0

    .line 546
    :cond_2
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    .line 547
    iget-object v4, v0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 548
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;)V

    goto :goto_0

    .line 545
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 591
    if-nez p2, :cond_0

    const/4 v0, 0x0

    move-object v2, v0

    .line 592
    :goto_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-lt v3, v1, :cond_1

    .line 606
    return-void

    .line 591
    :cond_0
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 597
    iget-object v4, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v2, :cond_3

    if-nez p3, :cond_3

    .line 592
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 602
    :cond_3
    if-nez p1, :cond_4

    if-nez p1, :cond_2

    iget-boolean v4, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendents:Z

    if-eqz v4, :cond_2

    .line 603
    :cond_4
    new-instance v4, Landroid/content/ContentService$ObserverCall;

    iget-object v0, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-direct {v4, p0, v0, p3}, Landroid/content/ContentService$ObserverCall;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .locals 1
    .parameter

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 523
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 508
    if-eqz p1, :cond_1

    .line 509
    if-nez p2, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 515
    :goto_0
    return-object v0

    .line 512
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 515
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 528
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;)V

    .line 529
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 610
    const/4 v0, 0x0

    .line 611
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v1

    .line 612
    if-lt p2, v1, :cond_1

    .line 614
    const/4 v1, 0x1

    invoke-direct {p0, v1, p3, p4, p5}, Landroid/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    move-object v6, v0

    .line 621
    :goto_0
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    .line 622
    :goto_1
    if-lt v8, v7, :cond_2

    .line 632
    :cond_0
    return-void

    .line 615
    :cond_1
    if-ge p2, v1, :cond_5

    .line 616
    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-direct {p0, v2, p3, p4, p5}, Landroid/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    move-object v6, v0

    goto :goto_0

    .line 623
    :cond_2
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    .line 624
    if-eqz v6, :cond_3

    iget-object v1, v0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 626
    :cond_3
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 627
    if-nez v6, :cond_0

    .line 622
    :cond_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_5
    move-object v6, v0

    goto :goto_0
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 560
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v5

    move v2, v0

    .line 561
    :goto_0
    if-lt v1, v2, :cond_0

    .line 570
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 571
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v5

    .line 572
    :goto_1
    if-lt v3, v2, :cond_1

    .line 582
    :goto_2
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 583
    const/4 v0, 0x1

    .line 585
    :goto_3
    return v0

    .line 562
    :cond_0
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v0, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v0

    .line 563
    if-eqz v0, :cond_4

    .line 564
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    add-int/lit8 v0, v1, -0x1

    .line 566
    add-int/lit8 v1, v2, -0x1

    .line 561
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 574
    iget-object v4, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v1, :cond_2

    .line 575
    iget-object v2, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 577
    invoke-interface {v1, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 572
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v5

    .line 585
    goto :goto_3

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_4
.end method
