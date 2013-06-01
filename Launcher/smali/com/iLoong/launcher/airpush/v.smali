.class Lcom/iLoong/launcher/airpush/v;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/AirPush;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/airpush/AirPush;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    sget-object v2, Lcom/iLoong/launcher/airpush/a;->a:[[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;Z)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/AirPush;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/AirPush;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/AirPush;->h:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_1

    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    array-length v5, v2

    rem-int/2addr v3, v5

    aget-object v2, v2, v3

    invoke-static {v4, v2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/AirPush;->d(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/AirPush;->e(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/iLoong/launcher/airpush/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;Z)V

    const-string v1, "mapkey"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in =null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/AirPush;->e(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    const-wide/32 v2, 0x6ddd00

    invoke-static {v1, v2, v3}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;J)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v2, v1}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;Ljava/io/InputStream;)V

    new-instance v15, Lcom/iLoong/launcher/airpush/f;

    invoke-direct {v15}, Lcom/iLoong/launcher/airpush/f;-><init>()V

    invoke-virtual {v15}, Lcom/iLoong/launcher/airpush/f;->a()Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/airpush/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/AirPush;->f(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/iLoong/launcher/airpush/b;-><init>(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {v2}, Lcom/iLoong/launcher/airpush/b;->a()V

    const-string v1, "hello"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appsize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/AirPush;->g(Lcom/iLoong/launcher/airpush/AirPush;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iget-object v2, v15, Lcom/iLoong/launcher/airpush/f;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v2, v15, Lcom/iLoong/launcher/airpush/f;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/iLoong/launcher/airpush/AirPush;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v2, v15, Lcom/iLoong/launcher/airpush/f;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v4}, Lcom/iLoong/launcher/airpush/AirPush;->g(Lcom/iLoong/launcher/airpush/AirPush;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    invoke-static {v3, v1, v2}, Lcom/iLoong/launcher/airpush/AirPush;->b(Lcom/iLoong/launcher/airpush/AirPush;J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v1}, Lcom/iLoong/launcher/airpush/AirPush;->h(Lcom/iLoong/launcher/airpush/AirPush;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "airpush"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config_time_interval"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/AirPush;->g(Lcom/iLoong/launcher/airpush/AirPush;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config_time"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/AirPush;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "next_check_config"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/AirPush;->i(Lcom/iLoong/launcher/airpush/AirPush;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "server_urls"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/AirPush;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "hello"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timeSpan:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeStamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/AirPush;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configTimeInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/AirPush;->g(Lcom/iLoong/launcher/airpush/AirPush;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v1}, Lcom/iLoong/launcher/airpush/AirPush;->j()V

    const-string v1, "keymap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app_size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v14, v1

    :goto_2
    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v14, v1, :cond_8

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->c:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v4, v15, Lcom/iLoong/launcher/airpush/f;->c:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v1, v4

    aget-object v1, v3, v1

    invoke-static {v2, v1}, Lcom/iLoong/launcher/airpush/AirPush;->b(Lcom/iLoong/launcher/airpush/AirPush;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->d:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v4, v15, Lcom/iLoong/launcher/airpush/f;->d:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v1, v4

    aget-object v1, v3, v1

    invoke-static {v2, v1}, Lcom/iLoong/launcher/airpush/AirPush;->c(Lcom/iLoong/launcher/airpush/AirPush;Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/AirPush;->j(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/AirPush;->g(Lcom/iLoong/launcher/airpush/AirPush;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;J)V

    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    :cond_6
    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    const-string v3, ""

    iput-object v3, v2, Lcom/iLoong/launcher/airpush/AirPush;->h:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/airpush/v;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v3, v2, Lcom/iLoong/launcher/airpush/AirPush;->h:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/airpush/AirPush;->h:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/airpush/c;

    iget-object v4, v1, Lcom/iLoong/launcher/airpush/c;->b:Ljava/lang/String;

    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/airpush/c;

    iget v9, v1, Lcom/iLoong/launcher/airpush/c;->h:I

    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/airpush/c;

    iget-object v6, v1, Lcom/iLoong/launcher/airpush/c;->a:Ljava/lang/String;

    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/airpush/c;

    iget-object v7, v1, Lcom/iLoong/launcher/airpush/c;->g:Ljava/lang/String;

    const-string v2, "newbug"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "new id :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/airpush/c;

    iget v1, v1, Lcom/iLoong/launcher/airpush/c;->c:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/iLoong/launcher/airpush/AirPush;->f:Ljava/util/List;

    new-instance v1, Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/airpush/c;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/c;->l:Landroid/graphics/Bitmap;

    iget-object v3, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iLoong/launcher/airpush/c;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/c;->m:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v10, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iLoong/launcher/airpush/c;

    iget-object v10, v10, Lcom/iLoong/launcher/airpush/c;->j:Ljava/lang/String;

    iget-object v11, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/iLoong/launcher/airpush/c;

    iget-object v11, v11, Lcom/iLoong/launcher/airpush/c;->i:Ljava/lang/String;

    iget-object v12, v15, Lcom/iLoong/launcher/airpush/f;->f:Ljava/lang/String;

    iget-object v13, v15, Lcom/iLoong/launcher/airpush/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iLoong/launcher/airpush/c;

    iget v13, v13, Lcom/iLoong/launcher/airpush/c;->c:I

    invoke-direct/range {v1 .. v13}, Lcom/iLoong/launcher/airpush/m;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto/16 :goto_2
.end method
