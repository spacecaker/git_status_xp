.class Landroid/view/ViewDebug$DumpZ;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpZ"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "out"

    .prologue
    .line 2028
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2029
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2030
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2031
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2032
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    :goto_0
    return-void

    .line 2033
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "out"

    .prologue
    .line 2010
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2011
    const/16 v0, 0xa

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2012
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2013
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2015
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    :goto_0
    return-void

    .line 2016
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "out"

    .prologue
    .line 2045
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2047
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2049
    const-string v0, "4,true "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2059
    :goto_0
    return-void

    .line 2053
    :cond_0
    const-string v0, "5,false "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2055
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1818
    invoke-static {p0, p1}, Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 8
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1823
    const/4 v3, 0x0

    .line 1825
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1826
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 1827
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 1828
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1829
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1835
    .end local v2           #group:Landroid/view/ViewGroup;
    :goto_0
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1840
    if-eqz v4, :cond_3

    .line 1841
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v4

    .line 1844
    .end local v4           #out:Ljava/io/BufferedWriter;
    .end local v5           #view:Landroid/view/View;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 1833
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    .restart local v5       #view:Landroid/view/View;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1837
    .end local v5           #view:Landroid/view/View;
    :catch_0
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .line 1838
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v6, "View"

    const-string v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1840
    if-eqz v3, :cond_0

    .line 1841
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1840
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    .line 1841
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v6

    .line 1840
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1837
    :catch_1
    move-exception v6

    move-object v1, v6

    goto :goto_2

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    .restart local v5       #view:Landroid/view/View;
    :cond_3
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 2105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 2106
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2108
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2109
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2110
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 2112
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2113
    .local v0, e:Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 2085
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2098
    :cond_0
    return-void

    .line 2089
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2090
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2091
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2092
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2093
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 2090
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2095
    .restart local v2       #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .parameter "context"
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1851
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1864
    :cond_0
    return-void

    .line 1855
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1856
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1857
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1858
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1859
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1856
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1861
    .restart local v2       #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 9
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1897
    const-string v4, ""

    .line 1899
    .local v4, strValue:Ljava/lang/String;
    instance-of v6, p1, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 1901
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    .line 1903
    .local v5, tempView:Landroid/view/View;
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 1904
    .local v3, location:[I
    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1907
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {p0, v6}, Landroid/view/ViewDebug$DumpZ;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #strValue:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1908
    .restart local v4       #strValue:Ljava/lang/String;
    const-string v6, "id"

    invoke-static {v6, v4, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1911
    const-string/jumbo v6, "x"

    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1914
    const-string/jumbo v6, "y"

    aget v7, v3, v8

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1917
    const-string/jumbo v6, "width"

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1920
    const-string v6, "height"

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1923
    const-string v6, "enable"

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1925
    const-string v6, "longclickable"

    invoke-virtual {v5}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1927
    const-string v6, "clickable"

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1929
    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-ne v6, v8, :cond_0

    .line 1931
    const-string v6, "hasfocus"

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1943
    .end local v3           #location:[I
    .end local v5           #tempView:Landroid/view/View;
    :cond_0
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 1945
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1946
    .local v2, group:Landroid/view/ViewGroup;
    const-string v6, "childcount"

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1949
    .end local v2           #group:Landroid/view/ViewGroup;
    :cond_1
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 1951
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 1952
    .local v5, tempView:Landroid/widget/TextView;
    const-string/jumbo v6, "text"

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1955
    .end local v5           #tempView:Landroid/widget/TextView;
    :cond_2
    instance-of v6, p1, Landroid/widget/Checkable;

    if-eqz v6, :cond_3

    .line 1957
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object v1, v0

    .line 1958
    .local v1, checkable:Landroid/widget/Checkable;
    const-string v6, "checked"

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 2002
    .end local v1           #checkable:Landroid/widget/Checkable;
    :cond_3
    return-void
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    .locals 5
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    const/4 v4, 0x0

    .line 1872
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 1888
    :goto_0
    return v2

    .line 1875
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_1

    .line 1876
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1875
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1879
    :cond_1
    const-string v2, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1880
    const-string v2, "hash"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1881
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1882
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    const/4 v2, 0x1

    goto :goto_0

    .line 1883
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1884
    .local v0, e:Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1885
    goto :goto_0
.end method

.method private static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2066
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2067
    .local v2, resources:Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 2069
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2078
    .local v1, fieldValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2072
    .end local v1           #fieldValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2073
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2074
    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0

    .line 2076
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #fieldValue:Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0
.end method
