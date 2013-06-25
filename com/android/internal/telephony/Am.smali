.class public Lcom/android/internal/telephony/Am;
.super Ljava/lang/Object;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Am$1;,
        Lcom/android/internal/telephony/Am$InstrumentationWatcher;,
        Lcom/android/internal/telephony/Am$IntentReceiver;
    }
.end annotation


# static fields
.field private static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field private static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mDebugOption:Z

.field private mNextArg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mDebugOption:Z

    .line 363
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/Am;)Landroid/app/IActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 64
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Am;

    invoke-direct {v1}, Lcom/android/internal/telephony/Am;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/Am;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 66
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 67
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 69
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private makeIntent()Landroid/content/Intent;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v7, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    .line 107
    .local v6, hasIntentInfo:Z
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mDebugOption:Z

    .line 108
    const/4 v5, 0x0

    .line 109
    .local v5, data:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 112
    .local v13, type:Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v11

    .local v11, opt:Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 113
    const-string v16, "-a"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/4 v6, 0x1

    goto :goto_0

    .line 116
    :cond_0
    const-string v16, "-d"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 118
    const/4 v6, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const-string v16, "-t"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v13

    .line 121
    const/4 v6, 0x1

    goto :goto_0

    .line 122
    :cond_2
    const-string v16, "-c"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/4 v6, 0x1

    goto :goto_0

    .line 125
    :cond_3
    const-string v16, "-e"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    const-string v16, "--es"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 126
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .line 128
    .local v15, value:Ljava/lang/String;
    invoke-virtual {v7, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/4 v6, 0x1

    .line 130
    goto :goto_0

    .end local v9           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_5
    const-string v16, "--ei"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 132
    .restart local v9       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .line 133
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 134
    const/4 v6, 0x1

    .line 135
    goto/16 :goto_0

    .end local v9           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_6
    const-string v16, "--ez"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 137
    .restart local v9       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .line 138
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    move-object v0, v7

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    const/4 v6, 0x1

    .line 140
    goto/16 :goto_0

    .end local v9           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_7
    const-string v16, "-n"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v12

    .line 142
    .local v12, str:Ljava/lang/String;
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 143
    .local v4, cn:Landroid/content/ComponentName;
    if-nez v4, :cond_8

    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad component name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 144
    :cond_8
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 145
    const/4 v6, 0x1

    .line 146
    goto/16 :goto_0

    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v12           #str:Ljava/lang/String;
    :cond_9
    const-string v16, "-f"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v12

    .line 148
    .restart local v12       #str:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 149
    .end local v12           #str:Ljava/lang/String;
    :cond_a
    const-string v16, "-D"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 150
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mDebugOption:Z

    goto/16 :goto_0

    .line 152
    :cond_b
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error: Unknown option: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 154
    const/16 v16, 0x0

    .line 180
    .end local p0
    :goto_1
    return-object v16

    .line 157
    .restart local p0
    :cond_c
    invoke-virtual {v7, v5, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArg()Ljava/lang/String;

    move-result-object v14

    .line 160
    .local v14, uri:Ljava/lang/String;
    if-eqz v14, :cond_11

    .line 161
    move-object v10, v7

    .line 162
    .local v10, oldIntent:Landroid/content/Intent;
    invoke-static {v14}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 163
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_d

    .line 164
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :cond_d
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    if-nez v16, :cond_e

    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_f

    .line 167
    :cond_e
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_f
    invoke-virtual {v10}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 170
    .local v3, cats:Ljava/util/Set;
    if-eqz v3, :cond_10

    .line 171
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 172
    .end local p0
    .local v8, it:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 173
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 176
    .end local v8           #it:Ljava/util/Iterator;
    :cond_10
    const/4 v6, 0x1

    .line 179
    .end local v3           #cats:Ljava/util/Set;
    .end local v10           #oldIntent:Landroid/content/Intent;
    :cond_11
    if-nez v6, :cond_12

    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "No intent supplied"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_12
    move-object/from16 v16, v7

    .line 180
    goto :goto_1
.end method

.method private nextArg()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 469
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    .line 471
    .local v0, arg:Ljava/lang/String;
    iput-object v3, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 476
    .end local v0           #arg:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 473
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    aget-object v1, v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 476
    goto :goto_0
.end method

.method private nextArgRequired()Ljava/lang/String;
    .locals 5

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v1, v2, v3

    .line 484
    .local v1, prev:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    .end local v1           #prev:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    sub-int/2addr v3, v5

    aget-object v1, v2, v3

    .line 442
    .local v1, prev:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    .end local v1           #prev:Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    iget-object v3, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    move-object v2, v4

    .line 465
    :goto_0
    return-object v2

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    aget-object v0, v2, v3

    .line 448
    .local v0, arg:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v4

    .line 449
    goto :goto_0

    .line 451
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    .line 452
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    .line 453
    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_5

    .line 456
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_4

    .line 457
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    .line 458
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 460
    :cond_4
    iput-object v4, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    move-object v2, v0

    .line 461
    goto :goto_0

    .line 464
    :cond_5
    iput-object v4, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    move-object v2, v0

    .line 465
    goto :goto_0
.end method

.method private run([Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 75
    array-length v1, p1

    if-ge v1, v2, :cond_0

    .line 76
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 101
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_1

    .line 82
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    .line 87
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 88
    .local v0, op:Ljava/lang/String;
    iput v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    .line 90
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runStart()V

    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "instrument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runInstrument()V

    goto :goto_0

    .line 94
    :cond_3
    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendBroadcast()V

    goto :goto_0

    .line 96
    :cond_4
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runProfile()V

    goto :goto_0

    .line 99
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runInstrument()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, profileFile:Ljava/lang/String;
    const/4 v13, 0x0

    .line 253
    .local v13, wait:Z
    const/4 v12, 0x0

    .line 254
    .local v12, rawMode:Z
    const/4 v9, 0x0

    .line 255
    .local v9, no_window_animation:Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 256
    .local v4, args:Landroid/os/Bundle;
    const/4 v6, 0x0

    .local v6, argKey:Ljava/lang/String;
    const/4 v7, 0x0

    .line 257
    .local v7, argValue:Ljava/lang/String;
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    .line 260
    .local v14, wm:Landroid/view/IWindowManager;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v11

    .local v11, opt:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 261
    const-string v0, "-p"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 263
    :cond_0
    const-string v0, "-w"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    const/4 v13, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const-string v0, "-r"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    const/4 v12, 0x1

    goto :goto_0

    .line 267
    :cond_2
    const-string v0, "-e"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 270
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_3
    const-string v0, "--no_window_animation"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    const/4 v9, 0x1

    goto :goto_0

    .line 274
    :cond_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    .end local v2           #profileFile:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 309
    :cond_5
    :goto_1
    return-void

    .line 280
    .restart local v2       #profileFile:Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v8, cnArg:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 282
    .local v1, cn:Landroid/content/ComponentName;
    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad component name: "

    .end local v2           #profileFile:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #profileFile:Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    .line 285
    .local v5, watcher:Lcom/android/internal/telephony/Am$InstrumentationWatcher;
    if-eqz v13, :cond_8

    .line 286
    new-instance v5, Lcom/android/internal/telephony/Am$InstrumentationWatcher;

    .end local v5           #watcher:Lcom/android/internal/telephony/Am$InstrumentationWatcher;
    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V

    .line 287
    .restart local v5       #watcher:Lcom/android/internal/telephony/Am$InstrumentationWatcher;
    invoke-virtual {v5, v12}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->setRawOutput(Z)V

    .line 289
    :cond_8
    const/4 v10, 0x0

    .line 290
    .local v10, oldAnims:[F
    if-eqz v9, :cond_9

    .line 291
    invoke-interface {v14}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v10

    .line 292
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-interface {v14, v0, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 293
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {v14, v0, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 296
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 297
    new-instance v0, Landroid/util/AndroidException;

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #profileFile:Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSTRUMENTATION_FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #profileFile:Ljava/lang/String;
    :cond_a
    if-eqz v5, :cond_b

    .line 301
    invoke-virtual {v5}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->waitForFinish()Z

    move-result v0

    if-nez v0, :cond_b

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "INSTRUMENTATION_ABORTED: System has crashed."

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    :cond_b
    if-eqz v10, :cond_5

    .line 307
    invoke-interface {v14, v10}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    goto :goto_1
.end method

.method private runProfile()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v4, 0x0

    .line 313
    .local v4, profileFile:Ljava/lang/String;
    const/4 v5, 0x0

    .line 314
    .local v5, start:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, process:Ljava/lang/String;
    const/4 v2, 0x0

    .line 317
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, cmd:Ljava/lang/String;
    const-string/jumbo v6, "start"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    const/4 v5, 0x1

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 322
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x3c00

    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 335
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v6, v3, v5, v4, v2}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 336
    new-instance v6, Landroid/util/AndroidException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PROFILE FAILED on process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 327
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 328
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unable to open file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    return-void

    .line 331
    :cond_2
    const-string/jumbo v6, "stop"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 332
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not valid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private runStart()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 185
    .local v2, intent:Landroid/content/Intent;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    iget-boolean v10, p0, Lcom/android/internal/telephony/Am;->mDebugOption:Z

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    move v8, v5

    move v9, v5

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v11

    .line 190
    .local v11, res:I
    packed-switch v11, :pswitch_data_0

    .line 236
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unknown error code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    :goto_0
    :pswitch_0
    return-void

    .line 194
    :pswitch_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unable to resolve "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :pswitch_6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error type 3"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sendBroadcast()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 244
    .local v2, intent:Landroid/content/Intent;
    new-instance v4, Lcom/android/internal/telephony/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V

    .line 245
    .local v4, receiver:Lcom/android/internal/telephony/Am$IntentReceiver;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v9, 0x1

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move v10, v5

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    .line 248
    return-void
.end method

.method private static showUsage()V
    .locals 2

    .prologue
    .line 490
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: am [subcommand] [options]\n\n    start an Activity: am start [-D] <INTENT>\n        -D: enable debugging\n\n    send a broadcast Intent: am broadcast <INTENT>\n\n    start an Instrumentation: am instrument [flags] <COMPONENT>\n        -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT)\n        -e <NAME> <VALUE>: set argument <NAME> to <VALUE>\n        -p <FILE>: write profiling data to <FILE>\n        -w: wait for instrumentation to finish before returning\n\n    start profiling: am profile <PROCESS> start <FILE>\n    stop profiling: am profile <PROCESS> stop\n\n    <INTENT> specifications include these flags:\n        [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]\n        [-c <CATEGORY> [-c <CATEGORY>] ...]\n        [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]\n        [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]\n        [-e|--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]\n        [-n <COMPONENT>] [-f <FLAGS>] [<URI>]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    return-void
.end method
