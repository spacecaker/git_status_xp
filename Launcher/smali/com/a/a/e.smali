.class public abstract Lcom/a/a/e;
.super Ljava/lang/Object;


# static fields
.field public static final BOTTOM:I = 0x4

.field public static final CENTER:I = 0x1

.field public static final DEBUG_ALL:I = 0x1

.field public static final DEBUG_CELL:I = 0x4

.field public static final DEBUG_NONE:I = 0x0

.field public static final DEBUG_TABLE:I = 0x2

.field public static final DEBUG_WIDGET:I = 0x8

.field public static final LEFT:I = 0x8

.field public static final MAX:Ljava/lang/String; = "max"

.field public static final MIN:Ljava/lang/String; = "min"

.field public static final PREF:Ljava/lang/String; = "pref"

.field public static final RIGHT:I = 0x10

.field public static final SCALE_FILL:I = 0x4

.field public static final SCALE_FIT:I = 0x2

.field public static final SCALE_STRETCH:I = 0x8

.field public static final TOP:I = 0x2


# instance fields
.field align:I

.field private final cellDefaults:Lcom/a/a/c;

.field private final cells:Ljava/util/ArrayList;

.field private final columnDefaults:Ljava/util/ArrayList;

.field private columnMinWidth:[I

.field private columnPrefWidth:[I

.field private columnWeightedWidth:[I

.field private columnWidth:[I

.field private columns:I

.field debug:I

.field private expandHeight:[F

.field private expandWidth:[F

.field height:Ljava/lang/String;

.field private layoutHeight:I

.field private layoutWidth:I

.field private layoutX:I

.field private layoutY:I

.field nameToWidget:Ljava/util/HashMap;

.field padBottom:Ljava/lang/String;

.field padLeft:Ljava/lang/String;

.field padRight:Ljava/lang/String;

.field padTop:Ljava/lang/String;

.field private rowDefaults:Lcom/a/a/c;

.field private rowHeight:[I

.field private rowMinHeight:[I

.field private rowPrefHeight:[I

.field private rowWeightedHeight:[I

.field private rows:I

.field private sizeInvalid:Z

.field table:Ljava/lang/Object;

.field private tableMinHeight:I

.field private tableMinWidth:I

.field private tablePrefHeight:I

.field private tablePrefWidth:I

.field toolkit:Lcom/a/a/d;

.field widgetToCell:Ljava/util/HashMap;

.field width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/a/a/d;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/e;->widgetToCell:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->cellDefaults:Lcom/a/a/c;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/a/a/e;->sizeInvalid:Z

    iput v2, p0, Lcom/a/a/e;->align:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->debug:I

    iput-object p1, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    return-void
.end method

.method private computeSize()V
    .locals 15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    iget-object v9, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    iget-object v10, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget-boolean v0, v0, Lcom/a/a/c;->E:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/e;->endRow()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/e;->columnMinWidth:[I

    iget v1, p0, Lcom/a/a/e;->columns:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/e;->ensureSize([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->columnMinWidth:[I

    iget-object v0, p0, Lcom/a/a/e;->rowMinHeight:[I

    iget v1, p0, Lcom/a/a/e;->rows:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/e;->ensureSize([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->rowMinHeight:[I

    iget-object v0, p0, Lcom/a/a/e;->columnPrefWidth:[I

    iget v1, p0, Lcom/a/a/e;->columns:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/e;->ensureSize([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->columnPrefWidth:[I

    iget-object v0, p0, Lcom/a/a/e;->rowPrefHeight:[I

    iget v1, p0, Lcom/a/a/e;->rows:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/e;->ensureSize([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->rowPrefHeight:[I

    iget-object v0, p0, Lcom/a/a/e;->columnWidth:[I

    iget v1, p0, Lcom/a/a/e;->columns:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/e;->ensureSize([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->columnWidth:[I

    iget-object v0, p0, Lcom/a/a/e;->rowHeight:[I

    iget v1, p0, Lcom/a/a/e;->rows:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/e;->ensureSize([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->rowHeight:[I

    iget-object v0, p0, Lcom/a/a/e;->expandWidth:[F

    iget v1, p0, Lcom/a/a/e;->columns:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/e;->ensureSize([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->expandWidth:[F

    iget-object v0, p0, Lcom/a/a/e;->expandHeight:[F

    iget v1, p0, Lcom/a/a/e;->rows:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/e;->ensureSize([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->expandHeight:[F

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v8, v0

    :goto_0
    if-lt v8, v11, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_c

    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v0

    :goto_2
    if-lt v7, v8, :cond_10

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->tableMinWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->tableMinHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->tablePrefWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->tablePrefHeight:I

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/a/a/e;->columns:I

    if-lt v0, v1, :cond_17

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/a/a/e;->rows:I

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    invoke-virtual {v9, p0, v0}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    invoke-virtual {v9, p0, v2}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/a/a/e;->width:Ljava/lang/String;

    invoke-virtual {v9, p0, v2}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/a/a/e;->height:Ljava/lang/String;

    invoke-virtual {v9, p0, v3}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/a/a/e;->tableMinWidth:I

    add-int/2addr v4, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/a/a/e;->tableMinWidth:I

    iget v2, p0, Lcom/a/a/e;->tableMinHeight:I

    add-int/2addr v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/a/a/e;->tableMinHeight:I

    iget v2, p0, Lcom/a/a/e;->tablePrefWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/a/a/e;->tableMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/a/a/e;->tablePrefWidth:I

    iget v0, p0, Lcom/a/a/e;->tablePrefHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/e;->tableMinHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/a/a/e;->tablePrefHeight:I

    return-void

    :cond_1
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget-object v2, v0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :goto_5
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v2, v0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/a/a/e;->expandHeight:[F

    iget v3, v0, Lcom/a/a/c;->G:I

    aget v2, v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/a/a/e;->expandHeight:[F

    iget v3, v0, Lcom/a/a/c;->G:I

    iget-object v4, v0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    :cond_3
    iget-object v2, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, v0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/a/a/e;->expandWidth:[F

    iget v3, v0, Lcom/a/a/c;->F:I

    aget v2, v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/a/a/e;->expandWidth:[F

    iget v3, v0, Lcom/a/a/c;->F:I

    iget-object v4, v0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    :cond_4
    iget v2, v0, Lcom/a/a/c;->F:I

    if-nez v2, :cond_8

    iget-object v1, v0, Lcom/a/a/c;->l:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v1

    :goto_6
    iput v1, v0, Lcom/a/a/c;->J:I

    iget v1, v0, Lcom/a/a/c;->H:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    iget-object v1, v0, Lcom/a/a/c;->k:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v1

    :goto_7
    iput v1, v0, Lcom/a/a/c;->I:I

    iget-object v1, v0, Lcom/a/a/c;->j:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v3

    iget v1, v0, Lcom/a/a/c;->F:I

    iget-object v2, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/a/a/e;->columns:I

    if-ne v1, v2, :cond_a

    iget-object v1, v0, Lcom/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v1

    :goto_8
    iput v1, v0, Lcom/a/a/c;->L:I

    iget v1, v0, Lcom/a/a/c;->G:I

    iget v2, p0, Lcom/a/a/e;->rows:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v1

    :goto_9
    iput v1, v0, Lcom/a/a/c;->K:I

    iget-object v1, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v2, v0, Lcom/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v2}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    iget-object v1, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v2, v0, Lcom/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v2}, Lcom/a/a/d;->getWidgetHeight(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    iget-object v1, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v4, v0, Lcom/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v4}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v7

    iget-object v1, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v4, v0, Lcom/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v4}, Lcom/a/a/d;->getWidgetHeight(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    iget-object v1, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v4, v0, Lcom/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v4}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    iget-object v1, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v12, v0, Lcom/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v12}, Lcom/a/a/d;->getWidgetHeight(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    if-ge v5, v7, :cond_5

    move v5, v7

    :cond_5
    if-ge v2, v6, :cond_6

    move v2, v6

    :cond_6
    if-lez v4, :cond_1b

    if-le v5, v4, :cond_1b

    :goto_a
    if-lez v1, :cond_1a

    if-le v2, v1, :cond_1a

    :goto_b
    iget-object v2, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    iget v2, v0, Lcom/a/a/c;->J:I

    iget v5, v0, Lcom/a/a/c;->L:I

    add-int/2addr v2, v5

    iget-object v5, p0, Lcom/a/a/e;->columnPrefWidth:[I

    iget v12, v0, Lcom/a/a/c;->F:I

    iget-object v13, p0, Lcom/a/a/e;->columnPrefWidth:[I

    iget v14, v0, Lcom/a/a/c;->F:I

    aget v13, v13, v14

    add-int/2addr v4, v2

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v5, v12

    iget-object v4, p0, Lcom/a/a/e;->columnMinWidth:[I

    iget v5, v0, Lcom/a/a/c;->F:I

    iget-object v12, p0, Lcom/a/a/e;->columnMinWidth:[I

    iget v13, v0, Lcom/a/a/c;->F:I

    aget v12, v12, v13

    add-int/2addr v2, v7

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v4, v5

    :cond_7
    iget v2, v0, Lcom/a/a/c;->I:I

    iget v4, v0, Lcom/a/a/c;->K:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/a/a/e;->rowPrefHeight:[I

    iget v5, v0, Lcom/a/a/c;->G:I

    iget-object v7, p0, Lcom/a/a/e;->rowPrefHeight:[I

    iget v12, v0, Lcom/a/a/c;->G:I

    aget v7, v7, v12

    add-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v4, v5

    iget-object v1, p0, Lcom/a/a/e;->rowMinHeight:[I

    iget v4, v0, Lcom/a/a/c;->G:I

    iget-object v5, p0, Lcom/a/a/e;->rowMinHeight:[I

    iget v0, v0, Lcom/a/a/c;->G:I

    aget v0, v5, v0

    add-int/2addr v2, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v4

    move v0, v3

    goto/16 :goto_5

    :cond_8
    iget-object v2, v0, Lcom/a/a/c;->l:Ljava/lang/String;

    invoke-virtual {v9, p0, v2}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/a/a/c;->h:Ljava/lang/String;

    invoke-virtual {v9, p0, v4}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v4

    sub-int v1, v4, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    goto/16 :goto_6

    :cond_9
    iget-object v1, v0, Lcom/a/a/c;->k:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    iget-object v1, v0, Lcom/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v4

    iget v1, v0, Lcom/a/a/c;->H:I

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/c;

    iget-object v1, v1, Lcom/a/a/c;->i:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v1

    sub-int v1, v4, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    goto/16 :goto_7

    :cond_a
    iget-object v1, v0, Lcom/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    goto/16 :goto_8

    :cond_b
    iget-object v1, v0, Lcom/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v9, p0, v1}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/a/a/c;->i:Ljava/lang/String;

    invoke-virtual {v9, p0, v2}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget-object v1, v0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_e
    iget-object v1, v0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/a/a/c;->F:I

    iget-object v4, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    :goto_c
    if-lt v1, v4, :cond_f

    iget v1, v0, Lcom/a/a/c;->F:I

    iget-object v4, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    :goto_d
    if-ge v1, v4, :cond_d

    iget-object v5, p0, Lcom/a/a/e;->expandWidth:[F

    iget-object v6, v0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_f
    iget-object v5, p0, Lcom/a/a/e;->expandWidth:[F

    aget v5, v5, v1

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_10
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget-object v1, v0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_2

    :cond_12
    iget-object v1, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    iget-object v1, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v2, v0, Lcom/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v2}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    iget-object v1, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v2, v0, Lcom/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v2}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    iget-object v1, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v3, v0, Lcom/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v3}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    if-ge v2, v6, :cond_13

    move v2, v6

    :cond_13
    if-lez v1, :cond_19

    if-le v2, v1, :cond_19

    :goto_e
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v2, v0, Lcom/a/a/c;->F:I

    iget-object v5, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v11, v2, v5

    move v5, v4

    move v4, v3

    :goto_f
    if-lt v2, v11, :cond_14

    const/4 v3, 0x0

    iget v2, v0, Lcom/a/a/c;->F:I

    iget-object v11, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v2

    :goto_10
    if-lt v2, v11, :cond_15

    const/4 v2, 0x0

    sub-int v5, v6, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v2, 0x0

    sub-int/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v1, v0, Lcom/a/a/c;->F:I

    iget-object v2, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v6, v1, v2

    move v2, v1

    :goto_11
    if-ge v2, v6, :cond_11

    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-nez v1, :cond_16

    const/high16 v1, 0x3f80

    iget-object v11, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v1, v11

    :goto_12
    iget-object v11, p0, Lcom/a/a/e;->columnMinWidth:[I

    aget v12, v11, v2

    int-to-float v12, v12

    int-to-float v13, v5

    mul-float/2addr v13, v1

    add-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v11, v2

    iget-object v11, p0, Lcom/a/a/e;->columnPrefWidth:[I

    aget v12, v11, v2

    int-to-float v12, v12

    int-to-float v13, v4

    mul-float/2addr v1, v13

    add-float/2addr v1, v12

    float-to-int v1, v1

    aput v1, v11, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    :cond_14
    iget-object v3, p0, Lcom/a/a/e;->columnMinWidth:[I

    aget v3, v3, v2

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/a/a/e;->columnPrefWidth:[I

    aget v3, v3, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_f

    :cond_15
    iget-object v12, p0, Lcom/a/a/e;->expandWidth:[F

    aget v12, v12, v2

    add-float/2addr v3, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_16
    iget-object v1, p0, Lcom/a/a/e;->expandWidth:[F

    aget v1, v1, v2

    div-float/2addr v1, v3

    goto :goto_12

    :cond_17
    iget v1, p0, Lcom/a/a/e;->tableMinWidth:I

    iget-object v2, p0, Lcom/a/a/e;->columnMinWidth:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/e;->tableMinWidth:I

    iget v1, p0, Lcom/a/a/e;->tablePrefWidth:I

    iget-object v2, p0, Lcom/a/a/e;->columnPrefWidth:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/e;->tablePrefWidth:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_18
    iget v1, p0, Lcom/a/a/e;->tableMinHeight:I

    iget-object v2, p0, Lcom/a/a/e;->rowMinHeight:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/e;->tableMinHeight:I

    iget v1, p0, Lcom/a/a/e;->tablePrefHeight:I

    iget-object v2, p0, Lcom/a/a/e;->rowMinHeight:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/a/a/e;->rowPrefHeight:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/e;->tablePrefHeight:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_19
    move v1, v2

    goto/16 :goto_e

    :cond_1a
    move v1, v2

    goto/16 :goto_b

    :cond_1b
    move v4, v5

    goto/16 :goto_a
.end method

.method private endRow()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/a/a/e;->columns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/a/a/e;->columns:I

    iget v0, p0, Lcom/a/a/e;->rows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/e;->rows:I

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/a/a/c;->E:Z

    invoke-virtual {p0}, Lcom/a/a/e;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget-boolean v3, v0, Lcom/a/a/c;->E:Z

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private ensureSize([FI)[F
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, p2, :cond_2

    :cond_0
    new-array p1, p2, [F

    :cond_1
    return-object p1

    :cond_2
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ensureSize([II)[I
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, p2, :cond_2

    :cond_0
    new-array p1, p2, [I

    :cond_1
    return-object p1

    :cond_2
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/a/a/c;
    .locals 8

    iget-object v0, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    invoke-virtual {v0, p0, p1}, Lcom/a/a/d;->wrap(Lcom/a/a/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/a/a/c;

    invoke-direct {v4, p0}, Lcom/a/a/c;-><init>(Lcom/a/a/e;)V

    iput-object v3, v4, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/e;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget-boolean v1, v0, Lcom/a/a/c;->E:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/a/a/c;->F:I

    iget-object v2, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v4, Lcom/a/a/c;->F:I

    iget v0, v0, Lcom/a/a/c;->G:I

    iput v0, v4, Lcom/a/a/c;->G:I

    :goto_1
    iget v0, v4, Lcom/a/a/c;->G:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-gez v2, :cond_4

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v4, Lcom/a/a/c;->F:I

    iget-object v1, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    iget v1, v4, Lcom/a/a/c;->F:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    if-eqz v0, :cond_7

    :goto_4
    invoke-virtual {v4, v0}, Lcom/a/a/c;->a(Lcom/a/a/c;)V

    :goto_5
    iget-object v0, p0, Lcom/a/a/e;->rowDefaults:Lcom/a/a/c;

    invoke-virtual {v4, v0}, Lcom/a/a/c;->b(Lcom/a/a/c;)V

    iget-object v0, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/e;->table:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/a/a/d;->addChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/a/a/c;->x:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v0, v0, Lcom/a/a/c;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lcom/a/a/c;->G:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget v1, v0, Lcom/a/a/c;->F:I

    iget-object v5, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v1

    :goto_6
    if-lt v1, v5, :cond_5

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget v6, v0, Lcom/a/a/c;->F:I

    iget v7, v4, Lcom/a/a/c;->F:I

    if-ne v6, v7, :cond_6

    iput v2, v4, Lcom/a/a/c;->H:I

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/a/a/e;->cellDefaults:Lcom/a/a/c;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/a/a/e;->cellDefaults:Lcom/a/a/c;

    invoke-virtual {v4, v0}, Lcom/a/a/c;->a(Lcom/a/a/c;)V

    goto :goto_5
.end method

.method public align(I)Lcom/a/a/e;
    .locals 0

    iput p1, p0, Lcom/a/a/e;->align:I

    return-object p0
.end method

.method public align(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->align:I

    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/e;->align:I

    :cond_0
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/a/a/e;->align:I

    :cond_1
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/a/a/e;->align:I

    :cond_2
    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/a/a/e;->align:I

    :cond_3
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/a/a/e;->align:I

    :cond_4
    return-object p0
.end method

.method public bottom()Lcom/a/a/e;
    .locals 1

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/a/a/e;->align:I

    iget v0, p0, Lcom/a/a/e;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/a/a/e;->align:I

    return-object p0
.end method

.method public center()Lcom/a/a/e;
    .locals 1

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/e;->align:I

    return-object p0
.end method

.method public clear()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/a/a/e;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v4, p0, Lcom/a/a/e;->rows:I

    iput v4, p0, Lcom/a/a/e;->columns:I

    invoke-virtual {p0}, Lcom/a/a/e;->invalidate()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    iget-object v3, p0, Lcom/a/a/e;->table:Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/c;->z:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/a/a/d;->removeChild(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public columnDefaults(I)Lcom/a/a/c;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/c;

    invoke-direct {v0, p0}, Lcom/a/a/c;-><init>(Lcom/a/a/e;)V

    iget-object v1, p0, Lcom/a/a/e;->cellDefaults:Lcom/a/a/c;

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/c;)V

    iget-object v1, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-lt v1, p1, :cond_2

    iget-object v1, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public debug()Lcom/a/a/e;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/e;->debug:I

    invoke-virtual {p0}, Lcom/a/a/e;->invalidate()V

    return-object p0
.end method

.method public debug(I)Lcom/a/a/e;
    .locals 1

    iput p1, p0, Lcom/a/a/e;->debug:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    invoke-virtual {v0, p0}, Lcom/a/a/d;->clearDebugRectangles(Lcom/a/a/e;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/e;->invalidate()V

    goto :goto_0
.end method

.method public debug(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->debug:I

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/a/a/e;->debug:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/e;->debug:I

    :cond_1
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/a/a/e;->debug:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/e;->debug:I

    :cond_2
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/a/a/e;->debug:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/a/a/e;->debug:I

    :cond_3
    const-string v0, "table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/a/a/e;->debug:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/a/a/e;->debug:I

    :cond_4
    const-string v0, "widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/a/a/e;->debug:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/a/a/e;->debug:I

    :cond_5
    iget v0, p0, Lcom/a/a/e;->debug:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    invoke-virtual {v0, p0}, Lcom/a/a/d;->clearDebugRectangles(Lcom/a/a/e;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/a/a/e;->invalidate()V

    goto :goto_0
.end method

.method public defaults()Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->cellDefaults:Lcom/a/a/c;

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    iget v0, p0, Lcom/a/a/e;->align:I

    return v0
.end method

.method public getAllCells()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/a/e;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllCells(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/a/a/e;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget-object v3, v0, Lcom/a/a/c;->x:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCell(Ljava/lang/Object;)Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->widgetToCell:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    return-object v0
.end method

.method public getCell(Ljava/lang/String;)Lcom/a/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->getWidget(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/e;->getCell(Ljava/lang/Object;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getCells()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDebug()I
    .locals 1

    iget v0, p0, Lcom/a/a/e;->debug:I

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutHeight()I
    .locals 1

    iget v0, p0, Lcom/a/a/e;->layoutHeight:I

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    iget v0, p0, Lcom/a/a/e;->layoutWidth:I

    return v0
.end method

.method public getLayoutX()I
    .locals 1

    iget v0, p0, Lcom/a/a/e;->layoutX:I

    return v0
.end method

.method public getLayoutY()I
    .locals 1

    iget v0, p0, Lcom/a/a/e;->layoutY:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/e;->computeSize()V

    :cond_0
    iget v0, p0, Lcom/a/a/e;->tableMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/e;->computeSize()V

    :cond_0
    iget v0, p0, Lcom/a/a/e;->tableMinWidth:I

    return v0
.end method

.method public getPadBottom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    return-object v0
.end method

.method public getPadLeft()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    return-object v0
.end method

.method public getPadRight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    return-object v0
.end method

.method public getPadTop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/e;->computeSize()V

    :cond_0
    iget v0, p0, Lcom/a/a/e;->tablePrefHeight:I

    return v0
.end method

.method public getPrefWidth()I
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/e;->computeSize()V

    :cond_0
    iget v0, p0, Lcom/a/a/e;->tablePrefWidth:I

    return v0
.end method

.method public getRow(F)I
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    add-float v3, p1, v0

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, v4, :cond_4

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lcom/a/a/e;->rows:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    iget v5, v0, Lcom/a/a/c;->B:I

    iget v6, v0, Lcom/a/a/c;->I:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-gtz v5, :cond_1

    iget-boolean v0, v0, Lcom/a/a/c;->E:Z

    if-eqz v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public getTable()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->table:Ljava/lang/Object;

    return-object v0
.end method

.method public getToolkit()Lcom/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    return-object v0
.end method

.method public getWidget(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWidgets()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWidgets(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->width:Ljava/lang/String;

    return-object v0
.end method

.method public height(I)Lcom/a/a/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->height:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public height(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    iput-object p1, p0, Lcom/a/a/e;->height:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-void
.end method

.method public abstract invalidateHierarchy()V
.end method

.method public layout()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/a/a/e;->sizeInvalid:Z

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/a/a/e;->computeSize()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v4

    add-int v17, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v4

    add-int v18, v3, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/e;->columns:I

    if-lt v3, v8, :cond_7

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/e;->rows:I

    if-lt v3, v8, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->tablePrefWidth:I

    sub-int v8, v3, v5

    if-nez v8, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->columnMinWidth:[I

    move-object v5, v3

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->tablePrefHeight:I

    sub-int v9, v3, v7

    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->rowMinHeight:[I

    move-object v7, v3

    :goto_2
    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v15, v3

    :goto_3
    move/from16 v0, v19

    if-lt v15, v0, :cond_c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v9, v3

    :goto_4
    if-lt v9, v10, :cond_10

    if-gtz v7, :cond_2

    if-lez v8, :cond_3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v9, v3

    :goto_5
    if-lt v9, v10, :cond_13

    :cond_3
    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->layoutWidth:I

    sub-int v7, v3, v17

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/e;->columns:I

    if-lt v3, v8, :cond_17

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/a/a/e;->columns:I

    if-lt v3, v10, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->columnWidth:[I

    aget v4, v3, v8

    sub-int/2addr v7, v9

    add-int/2addr v4, v7

    aput v4, v3, v8

    :cond_4
    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->layoutHeight:I

    sub-int v4, v3, v18

    const/4 v3, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/e;->rows:I

    if-lt v3, v7, :cond_1a

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/a/a/e;->rows:I

    if-lt v3, v9, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->rowHeight:[I

    aget v6, v3, v7

    sub-int/2addr v4, v8

    add-int/2addr v4, v6

    aput v4, v3, v7

    :cond_5
    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v3

    :goto_a
    if-lt v7, v8, :cond_1d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/e;->columns:I

    if-lt v3, v6, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->width:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v3

    add-int v4, v4, v17

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v3, 0x0

    move v4, v5

    :goto_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/e;->rows:I

    if-lt v3, v5, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->height:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v3

    add-int v4, v4, v18

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->layoutX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/a/a/d;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/e;->align:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/e;->layoutWidth:I

    sub-int/2addr v4, v11

    add-int/2addr v3, v4

    move v10, v3

    :goto_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->layoutY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/a/a/d;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/e;->align:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/e;->layoutHeight:I

    sub-int/2addr v4, v12

    add-int/2addr v3, v4

    move v9, v3

    :goto_e
    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v8, v3

    move v5, v9

    move v4, v10

    :goto_f
    if-lt v8, v13, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->debug:I

    if-nez v3, :cond_32

    :cond_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/e;->columnMinWidth:[I

    aget v8, v8, v3

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/e;->expandWidth:[F

    aget v8, v8, v3

    add-float/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/e;->rowMinHeight:[I

    aget v8, v8, v3

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/e;->expandHeight:[F

    aget v8, v8, v3

    add-float/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/a/a/e;->layoutWidth:I

    sub-int v5, v9, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->columnWeightedWidth:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/e;->columns:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/a/a/e;->ensureSize([II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/a/a/e;->columnWeightedWidth:[I

    const/4 v3, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget v10, v0, Lcom/a/a/e;->columns:I

    if-ge v3, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/e;->columnPrefWidth:[I

    aget v10, v10, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/e;->columnMinWidth:[I

    aget v11, v11, v3

    sub-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v8

    div-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/e;->columnMinWidth:[I

    aget v11, v11, v3

    int-to-float v12, v9

    mul-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v10, v11

    aput v10, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->rowWeightedHeight:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/e;->rows:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/a/a/e;->ensureSize([II)[I

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/a/a/e;->rowWeightedHeight:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/a/a/e;->layoutHeight:I

    sub-int v7, v10, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v3, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget v10, v0, Lcom/a/a/e;->rows:I

    if-lt v3, v10, :cond_b

    move-object v7, v8

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/e;->rowPrefHeight:[I

    aget v10, v10, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/e;->rowMinHeight:[I

    aget v11, v11, v3

    sub-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v9

    div-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/e;->rowMinHeight:[I

    aget v11, v11, v3

    int-to-float v12, v7

    mul-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v10, v11

    aput v10, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/c;

    iget-object v8, v3, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d

    :goto_12
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto/16 :goto_3

    :cond_d
    const/4 v9, 0x0

    iget v8, v3, Lcom/a/a/c;->F:I

    iget-object v10, v3, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v8

    move v14, v9

    :goto_13
    if-lt v8, v10, :cond_f

    iget v8, v3, Lcom/a/a/c;->G:I

    aget v20, v7, v8

    iget-object v8, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v9, v3, Lcom/a/a/c;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v8, v9}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v13

    iget-object v8, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v9, v3, Lcom/a/a/c;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v8, v9}, Lcom/a/a/d;->getWidgetHeight(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v12

    iget-object v8, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v9, v3, Lcom/a/a/c;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v8, v9}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v11

    iget-object v8, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v9, v3, Lcom/a/a/c;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v8, v9}, Lcom/a/a/d;->getWidgetHeight(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v9

    iget-object v8, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v10, v3, Lcom/a/a/c;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v8, v10}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v10

    iget-object v8, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v0, v3, Lcom/a/a/c;->f:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v8, v1}, Lcom/a/a/d;->getWidgetHeight(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v8

    if-ge v13, v11, :cond_42

    :goto_14
    if-ge v12, v9, :cond_41

    :goto_15
    if-lez v10, :cond_40

    if-le v11, v10, :cond_40

    :goto_16
    if-lez v8, :cond_3f

    if-le v9, v8, :cond_3f

    :goto_17
    iget v9, v3, Lcom/a/a/c;->J:I

    sub-int v9, v14, v9

    iget v11, v3, Lcom/a/a/c;->L:I

    sub-int/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v3, Lcom/a/a/c;->C:I

    iget v9, v3, Lcom/a/a/c;->I:I

    sub-int v9, v20, v9

    iget v10, v3, Lcom/a/a/c;->K:I

    sub-int/2addr v9, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Lcom/a/a/c;->D:I

    iget-object v8, v3, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/e;->columnWidth:[I

    iget v9, v3, Lcom/a/a/c;->F:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/e;->columnWidth:[I

    iget v11, v3, Lcom/a/a/c;->F:I

    aget v10, v10, v11

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v8, v9

    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/e;->rowHeight:[I

    iget v9, v3, Lcom/a/a/c;->G:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/e;->rowHeight:[I

    iget v3, v3, Lcom/a/a/c;->G:I

    aget v3, v10, v3

    move/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v8, v9

    goto/16 :goto_12

    :cond_f
    aget v9, v5, v8

    add-int/2addr v9, v14

    add-int/lit8 v8, v8, 0x1

    move v14, v9

    goto/16 :goto_13

    :cond_10
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/c;

    iget-object v11, v3, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_11

    move v3, v8

    :goto_18
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v3

    goto/16 :goto_4

    :cond_11
    iget-object v11, v3, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/e;->columnWidth:[I

    iget v12, v3, Lcom/a/a/c;->F:I

    aget v11, v11, v12

    iget v12, v3, Lcom/a/a/c;->J:I

    sub-int/2addr v11, v12

    iget v12, v3, Lcom/a/a/c;->L:I

    sub-int/2addr v11, v12

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_12
    iget-object v11, v3, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    if-eqz v11, :cond_3e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/e;->rowHeight:[I

    iget v12, v3, Lcom/a/a/c;->G:I

    aget v11, v11, v12

    iget v12, v3, Lcom/a/a/c;->I:I

    sub-int/2addr v11, v12

    iget v3, v3, Lcom/a/a/c;->K:I

    sub-int v3, v11, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_18

    :cond_13
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/c;

    iget-object v11, v3, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_15

    :cond_14
    :goto_19
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto/16 :goto_5

    :cond_15
    if-lez v7, :cond_16

    iget-object v11, v3, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    if-eqz v11, :cond_16

    iget v11, v3, Lcom/a/a/c;->J:I

    iget v12, v3, Lcom/a/a/c;->L:I

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/a/a/e;->columnWidth:[I

    iget v13, v3, Lcom/a/a/c;->F:I

    aget v12, v12, v13

    sub-int/2addr v12, v11

    sub-int v12, v7, v12

    if-lez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/a/a/e;->columnWidth:[I

    iget v14, v3, Lcom/a/a/c;->F:I

    add-int/2addr v11, v7

    aput v11, v13, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/a/a/e;->tableMinWidth:I

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/a/a/e;->tableMinWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/a/a/e;->tablePrefWidth:I

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/a/a/e;->tablePrefWidth:I

    :cond_16
    if-lez v8, :cond_14

    iget-object v11, v3, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    if-eqz v11, :cond_14

    iget v11, v3, Lcom/a/a/c;->I:I

    iget v12, v3, Lcom/a/a/c;->K:I

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/a/a/e;->rowHeight:[I

    iget v13, v3, Lcom/a/a/c;->G:I

    aget v12, v12, v13

    sub-int/2addr v12, v11

    sub-int v12, v8, v12

    if-lez v12, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/a/a/e;->rowHeight:[I

    iget v3, v3, Lcom/a/a/c;->G:I

    add-int/2addr v11, v8

    aput v11, v13, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->tableMinHeight:I

    add-int/2addr v3, v12

    move-object/from16 v0, p0

    iput v3, v0, Lcom/a/a/e;->tableMinHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->tablePrefHeight:I

    add-int/2addr v3, v12

    move-object/from16 v0, p0

    iput v3, v0, Lcom/a/a/e;->tablePrefHeight:I

    goto :goto_19

    :cond_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/e;->columnWidth:[I

    aget v8, v8, v3

    sub-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/e;->expandWidth:[F

    aget v10, v10, v3

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_19

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_19
    int-to-float v8, v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/e;->expandWidth:[F

    aget v10, v10, v3

    mul-float/2addr v8, v10

    div-float/2addr v8, v4

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/e;->columnWidth:[I

    aget v11, v10, v3

    add-int/2addr v11, v8

    aput v11, v10, v3

    add-int/2addr v9, v8

    move v8, v3

    goto :goto_1a

    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/a/a/e;->rowHeight:[I

    aget v7, v7, v3

    sub-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/e;->expandHeight:[F

    aget v9, v9, v3

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1c

    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    :cond_1c
    int-to-float v7, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/e;->expandHeight:[F

    aget v9, v9, v3

    mul-float/2addr v7, v9

    div-float/2addr v7, v6

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/e;->rowHeight:[I

    aget v10, v9, v3

    add-int/2addr v10, v7

    aput v10, v9, v3

    add-int/2addr v8, v7

    move v7, v3

    goto :goto_1b

    :cond_1d
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/c;

    iget-object v4, v3, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1e
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_a

    :cond_1f
    iget-object v4, v3, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1e

    const/4 v6, 0x0

    iget v4, v3, Lcom/a/a/c;->F:I

    iget-object v9, v3, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v4

    :goto_1c
    if-lt v4, v9, :cond_20

    iget v4, v3, Lcom/a/a/c;->J:I

    iget v9, v3, Lcom/a/a/c;->L:I

    add-int/2addr v4, v9

    sub-int v4, v6, v4

    iget-object v6, v3, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int v6, v4, v6

    if-lez v6, :cond_1e

    iget v4, v3, Lcom/a/a/c;->F:I

    iget-object v3, v3, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v9, v4, v3

    move v3, v4

    :goto_1d
    if-ge v3, v9, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/e;->columnWidth:[I

    aget v10, v4, v3

    add-int/2addr v10, v6

    aput v10, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_20
    aget v10, v5, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/e;->columnWidth:[I

    aget v11, v11, v4

    sub-int/2addr v10, v11

    add-int/2addr v6, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/e;->columnWidth:[I

    aget v6, v6, v3

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/e;->rowHeight:[I

    aget v5, v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/e;->align:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_3d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/e;->layoutWidth:I

    sub-int/2addr v4, v11

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move v10, v3

    goto/16 :goto_d

    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/e;->align:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/e;->layoutHeight:I

    sub-int/2addr v4, v12

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move v9, v3

    goto/16 :goto_e

    :cond_25
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/c;

    iget-object v6, v3, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_26

    move v3, v5

    :goto_1e
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v3

    goto/16 :goto_f

    :cond_26
    const/4 v7, 0x0

    iget v6, v3, Lcom/a/a/c;->F:I

    iget-object v14, v3, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v6

    :goto_1f
    if-lt v6, v14, :cond_2a

    iget v6, v3, Lcom/a/a/c;->J:I

    iget v14, v3, Lcom/a/a/c;->L:I

    add-int/2addr v6, v14

    sub-int v6, v7, v6

    iget v7, v3, Lcom/a/a/c;->J:I

    add-int/2addr v7, v4

    iget-object v4, v3, Lcom/a/a/c;->o:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v14, 0x0

    cmpl-float v4, v4, v14

    if-lez v4, :cond_27

    int-to-float v4, v6

    iget-object v14, v3, Lcom/a/a/c;->o:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float/2addr v4, v14

    float-to-int v4, v4

    iput v4, v3, Lcom/a/a/c;->C:I

    iget-object v4, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v14, v3, Lcom/a/a/c;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v14}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_27

    iget v14, v3, Lcom/a/a/c;->C:I

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/a/a/c;->C:I

    :cond_27
    iget-object v4, v3, Lcom/a/a/c;->p:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v14, 0x0

    cmpl-float v4, v4, v14

    if-lez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/e;->rowHeight:[I

    iget v14, v3, Lcom/a/a/c;->G:I

    aget v4, v4, v14

    int-to-float v4, v4

    iget-object v14, v3, Lcom/a/a/c;->p:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float/2addr v4, v14

    float-to-int v4, v4

    iget v14, v3, Lcom/a/a/c;->I:I

    sub-int/2addr v4, v14

    iget v14, v3, Lcom/a/a/c;->K:I

    sub-int/2addr v4, v14

    iput v4, v3, Lcom/a/a/c;->D:I

    iget-object v4, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    iget-object v14, v3, Lcom/a/a/c;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v14}, Lcom/a/a/d;->getWidgetHeight(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_28

    iget v14, v3, Lcom/a/a/c;->D:I

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/a/a/c;->D:I

    :cond_28
    iget-object v4, v3, Lcom/a/a/c;->y:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v14, 0x8

    if-eq v4, v14, :cond_29

    iget-object v4, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    const-string v14, "pref"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v14}, Lcom/a/a/d;->getWidgetWidth(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    int-to-float v14, v4

    iget-object v4, v3, Lcom/a/a/c;->z:Ljava/lang/Object;

    const-string v15, "pref"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v15}, Lcom/a/a/d;->getWidgetHeight(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    int-to-float v15, v4

    iget-object v4, v3, Lcom/a/a/c;->y:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_29
    :goto_20
    :pswitch_0
    iget-object v4, v3, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2d

    iput v7, v3, Lcom/a/a/c;->A:I

    :goto_21
    iget-object v4, v3, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2f

    iget v4, v3, Lcom/a/a/c;->I:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/a/a/c;->B:I

    :goto_22
    iget-boolean v4, v3, Lcom/a/a/c;->E:Z

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/e;->rowHeight:[I

    iget v3, v3, Lcom/a/a/c;->G:I

    aget v3, v4, v3

    add-int/2addr v3, v5

    move v4, v10

    goto/16 :goto_1e

    :cond_2a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/a/a/e;->columnWidth:[I

    aget v15, v15, v6

    add-int/2addr v7, v15

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1f

    :pswitch_1
    iget v4, v3, Lcom/a/a/c;->D:I

    int-to-float v4, v4

    iget v0, v3, Lcom/a/a/c;->C:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v4, v4, v19

    div-float v19, v15, v14

    cmpl-float v4, v4, v19

    if-lez v4, :cond_2b

    iget v4, v3, Lcom/a/a/c;->C:I

    int-to-float v4, v4

    div-float/2addr v4, v14

    :goto_23
    mul-float/2addr v14, v4

    float-to-int v14, v14

    iput v14, v3, Lcom/a/a/c;->C:I

    mul-float/2addr v4, v15

    float-to-int v4, v4

    iput v4, v3, Lcom/a/a/c;->D:I

    goto :goto_20

    :cond_2b
    iget v4, v3, Lcom/a/a/c;->D:I

    int-to-float v4, v4

    div-float/2addr v4, v15

    goto :goto_23

    :pswitch_2
    iget v4, v3, Lcom/a/a/c;->D:I

    int-to-float v4, v4

    iget v0, v3, Lcom/a/a/c;->C:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v4, v4, v19

    div-float v19, v15, v14

    cmpg-float v4, v4, v19

    if-gez v4, :cond_2c

    iget v4, v3, Lcom/a/a/c;->C:I

    int-to-float v4, v4

    div-float/2addr v4, v14

    :goto_24
    mul-float/2addr v14, v4

    float-to-int v14, v14

    iput v14, v3, Lcom/a/a/c;->C:I

    mul-float/2addr v4, v15

    float-to-int v4, v4

    iput v4, v3, Lcom/a/a/c;->D:I

    goto :goto_20

    :cond_2c
    iget v4, v3, Lcom/a/a/c;->D:I

    int-to-float v4, v4

    div-float/2addr v4, v15

    goto :goto_24

    :cond_2d
    iget-object v4, v3, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2e

    add-int v4, v7, v6

    iget v14, v3, Lcom/a/a/c;->C:I

    sub-int/2addr v4, v14

    iput v4, v3, Lcom/a/a/c;->A:I

    goto/16 :goto_21

    :cond_2e
    iget v4, v3, Lcom/a/a/c;->C:I

    sub-int v4, v6, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    iput v4, v3, Lcom/a/a/c;->A:I

    goto/16 :goto_21

    :cond_2f
    iget-object v4, v3, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/e;->rowHeight:[I

    iget v14, v3, Lcom/a/a/c;->G:I

    aget v4, v4, v14

    add-int/2addr v4, v5

    iget v14, v3, Lcom/a/a/c;->D:I

    sub-int/2addr v4, v14

    iget v14, v3, Lcom/a/a/c;->K:I

    sub-int/2addr v4, v14

    iput v4, v3, Lcom/a/a/c;->B:I

    goto/16 :goto_22

    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/e;->rowHeight:[I

    iget v14, v3, Lcom/a/a/c;->G:I

    aget v4, v4, v14

    iget v14, v3, Lcom/a/a/c;->D:I

    sub-int/2addr v4, v14

    iget v14, v3, Lcom/a/a/c;->I:I

    add-int/2addr v4, v14

    iget v14, v3, Lcom/a/a/c;->K:I

    sub-int/2addr v4, v14

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Lcom/a/a/c;->B:I

    goto/16 :goto_22

    :cond_31
    iget v3, v3, Lcom/a/a/c;->L:I

    add-int/2addr v3, v6

    add-int/2addr v3, v7

    move v4, v3

    move v3, v5

    goto/16 :goto_1e

    :cond_32
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/a/a/d;->clearDebugRectangles(Lcom/a/a/e;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->debug:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_33

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->debug:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_34

    :cond_33
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/e;->layoutX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/e;->layoutY:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/e;->layoutWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/e;->layoutHeight:I

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/a/a/d;->addDebugRectangle(Lcom/a/a/e;IIIII)V

    const/4 v4, 0x2

    sub-int v7, v11, v17

    sub-int v8, v12, v18

    move-object/from16 v3, p0

    move v5, v10

    move v6, v9

    invoke-virtual/range {v2 .. v8}, Lcom/a/a/d;->addDebugRectangle(Lcom/a/a/e;IIIII)V

    :cond_34
    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v13, v3

    move v11, v9

    move v12, v10

    :goto_25
    if-ge v13, v14, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/a/a/c;

    iget-object v3, v9, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_35

    move v3, v11

    move v4, v12

    :goto_26
    add-int/lit8 v5, v13, 0x1

    move v13, v5

    move v11, v3

    move v12, v4

    goto :goto_25

    :cond_35
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->debug:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->debug:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_37

    :cond_36
    const/16 v4, 0x8

    iget v5, v9, Lcom/a/a/c;->A:I

    iget v6, v9, Lcom/a/a/c;->B:I

    iget v7, v9, Lcom/a/a/c;->C:I

    iget v8, v9, Lcom/a/a/c;->D:I

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/a/a/d;->addDebugRectangle(Lcom/a/a/e;IIIII)V

    :cond_37
    const/4 v4, 0x0

    iget v3, v9, Lcom/a/a/c;->F:I

    iget-object v5, v9, Lcom/a/a/c;->u:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v3

    :goto_27
    if-lt v3, v5, :cond_3a

    iget v3, v9, Lcom/a/a/c;->J:I

    iget v5, v9, Lcom/a/a/c;->L:I

    add-int/2addr v3, v5

    sub-int v7, v4, v3

    iget v3, v9, Lcom/a/a/c;->J:I

    add-int v5, v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->debug:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_38

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/e;->debug:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_39

    :cond_38
    const/4 v4, 0x4

    iget v3, v9, Lcom/a/a/c;->I:I

    add-int v6, v11, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->rowHeight:[I

    iget v8, v9, Lcom/a/a/c;->G:I

    aget v3, v3, v8

    iget v8, v9, Lcom/a/a/c;->I:I

    sub-int/2addr v3, v8

    iget v8, v9, Lcom/a/a/c;->K:I

    sub-int v8, v3, v8

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/a/a/d;->addDebugRectangle(Lcom/a/a/e;IIIII)V

    :cond_39
    iget-boolean v3, v9, Lcom/a/a/c;->E:Z

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/e;->rowHeight:[I

    iget v4, v9, Lcom/a/a/c;->G:I

    aget v3, v3, v4

    add-int/2addr v3, v11

    move v4, v10

    goto :goto_26

    :cond_3a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/e;->columnWidth:[I

    aget v6, v6, v3

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_3b
    iget v3, v9, Lcom/a/a/c;->L:I

    add-int/2addr v3, v7

    add-int/2addr v3, v5

    move v4, v3

    move v3, v11

    goto/16 :goto_26

    :cond_3c
    move v9, v3

    goto/16 :goto_e

    :cond_3d
    move v10, v3

    goto/16 :goto_d

    :cond_3e
    move v3, v8

    goto/16 :goto_18

    :cond_3f
    move v8, v9

    goto/16 :goto_17

    :cond_40
    move v10, v11

    goto/16 :goto_16

    :cond_41
    move v9, v12

    goto/16 :goto_15

    :cond_42
    move v11, v13

    goto/16 :goto_14

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public left()Lcom/a/a/e;
    .locals 1

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/a/a/e;->align:I

    iget v0, p0, Lcom/a/a/e;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/a/a/e;->align:I

    return-object p0
.end method

.method public pad(I)Lcom/a/a/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public pad(IIII)Lcom/a/a/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public pad(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    iput-object p1, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    iput-object p1, p0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    iput-object p1, p0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    iput-object p1, p0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public pad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    iput-object p1, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    iput-object p3, p0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    iput-object p4, p0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public padBottom(I)Lcom/a/a/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public padBottom(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    iput-object p1, p0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public padLeft(I)Lcom/a/a/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public padLeft(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    iput-object p1, p0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public padRight(I)Lcom/a/a/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public padRight(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    iput-object p1, p0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public padTop(I)Lcom/a/a/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public padTop(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    iput-object p1, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/a/a/b;->a(Lcom/a/a/e;Ljava/lang/String;)V

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Name is already used: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a/a/e;->clear()V

    iput-object v2, p0, Lcom/a/a/e;->padTop:Ljava/lang/String;

    iput-object v2, p0, Lcom/a/a/e;->padLeft:Ljava/lang/String;

    iput-object v2, p0, Lcom/a/a/e;->padBottom:Ljava/lang/String;

    iput-object v2, p0, Lcom/a/a/e;->padRight:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/e;->align:I

    iget v0, p0, Lcom/a/a/e;->debug:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    invoke-virtual {v0, p0}, Lcom/a/a/d;->clearDebugRectangles(Lcom/a/a/e;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->debug:I

    iget-object v0, p0, Lcom/a/a/e;->cellDefaults:Lcom/a/a/c;

    invoke-static {p0}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/c;)V

    iget-object v0, p0, Lcom/a/a/e;->columnDefaults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/a/a/e;->rowDefaults:Lcom/a/a/c;

    return-void
.end method

.method public right()Lcom/a/a/e;
    .locals 1

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/a/a/e;->align:I

    iget v0, p0, Lcom/a/a/e;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/a/a/e;->align:I

    return-object p0
.end method

.method public row()Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/e;->endRow()V

    :cond_0
    new-instance v0, Lcom/a/a/c;

    invoke-direct {v0, p0}, Lcom/a/a/c;-><init>(Lcom/a/a/e;)V

    iput-object v0, p0, Lcom/a/a/e;->rowDefaults:Lcom/a/a/c;

    iget-object v0, p0, Lcom/a/a/e;->rowDefaults:Lcom/a/a/c;

    return-object v0
.end method

.method public setLayoutSize(IIII)V
    .locals 0

    iput p1, p0, Lcom/a/a/e;->layoutX:I

    iput p2, p0, Lcom/a/a/e;->layoutY:I

    iput p3, p0, Lcom/a/a/e;->layoutWidth:I

    iput p4, p0, Lcom/a/a/e;->layoutHeight:I

    return-void
.end method

.method public setParent(Lcom/a/a/e;)V
    .locals 1

    iget-object v0, p1, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/a/a/e;->nameToWidget:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/a/a/e;->widgetToCell:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/a/a/e;->widgetToCell:Ljava/util/HashMap;

    return-void
.end method

.method public setTable(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/e;->table:Ljava/lang/Object;

    return-void
.end method

.method public setToolkit(Lcom/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    return-void
.end method

.method public setWidget(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->getCell(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/a/c;->a(Ljava/lang/Object;)Lcom/a/a/c;

    return-void
.end method

.method public size(II)Lcom/a/a/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->width:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->height:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public size(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    iput-object p1, p0, Lcom/a/a/e;->width:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/e;->height:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public varargs stack([Ljava/lang/Object;)Lcom/a/a/c;
    .locals 6

    iget-object v0, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    invoke-virtual {v0}, Lcom/a/a/d;->newStack()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/a/a/e;->add(Ljava/lang/Object;)Lcom/a/a/c;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    aget-object v4, p1, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/a/a/d;->addChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public top()Lcom/a/a/e;
    .locals 1

    iget v0, p0, Lcom/a/a/e;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/a/a/e;->align:I

    iget v0, p0, Lcom/a/a/e;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/a/a/e;->align:I

    return-object p0
.end method

.method public width(I)Lcom/a/a/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->width:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method

.method public width(Ljava/lang/String;)Lcom/a/a/e;
    .locals 1

    iput-object p1, p0, Lcom/a/a/e;->width:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->sizeInvalid:Z

    return-object p0
.end method
