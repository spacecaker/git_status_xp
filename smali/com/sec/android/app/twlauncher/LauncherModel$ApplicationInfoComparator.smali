.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mMode:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2236
    return-void
.end method

.method private integerCompare(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2275
    const/4 v0, 0x0

    .line 2276
    .local v0, ret:I
    if-le p1, p2, :cond_1

    .line 2277
    const/4 v0, 0x1

    .line 2282
    :cond_0
    :goto_0
    return v0

    .line 2278
    :cond_1
    if-ge p1, p2, :cond_0

    .line 2279
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2248
    const/4 v0, 0x0

    .line 2249
    .local v0, ret:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2250
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2251
    if-nez v0, :cond_0

    .line 2252
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2253
    if-nez v0, :cond_0

    .line 2254
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2267
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2268
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2100()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2271
    :cond_1
    return v0

    .line 2258
    :cond_2
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2259
    if-nez v0, :cond_0

    .line 2260
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2261
    if-nez v0, :cond_0

    .line 2262
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2232
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v0

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2244
    iput p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->mMode:I

    .line 2245
    return-void
.end method
