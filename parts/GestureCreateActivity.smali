.class public Lcom/lidroid/parts/GestureCreateActivity;
.super Landroid/app/Activity;
.source "GestureCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;
    }
.end annotation


# static fields
.field private static final ACTION_POSITION_FLASHLIGHT:I = 0x3

.field private static final ACTION_POSITION_SHORTCUT:I = 0x2

.field private static final ACTION_POSITION_SOUND:I = 0x1

.field private static final ACTION_POSITION_UNLOCK:I = 0x0

.field private static final LENGTH_THRESHOLD:F = 120.0f

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x3

.field private static final REQUEST_PICK_APPLICATION:I = 0x2

.field private static final REQUEST_PICK_SHORTCUT:I = 0x1


# instance fields
.field private mActionPicker:Landroid/widget/Spinner;

.field private mDoneButton:Landroid/view/View;

.field private mDrawLabel:Landroid/widget/TextView;

.field private mFriendlyName:Ljava/lang/String;

.field private mGesture:Landroid/gesture/Gesture;

.field private mGestureSensitivity:D

.field private mRunInBackground:Landroid/widget/CheckBox;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 199
    return-void
.end method

.method static synthetic access$100(Lcom/lidroid/parts/GestureCreateActivity;)Landroid/gesture/Gesture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lidroid/parts/GestureCreateActivity;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lidroid/parts/GestureCreateActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mDoneButton:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public addGesture(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 174
    const v1, 0x7f080033

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 192
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mRunInBackground:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "___BACKGROUND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mUri:Ljava/lang/String;

    .line 183
    :cond_1
    invoke-static {}, Lcom/lidroid/parts/GestureListActivity;->getStore()Landroid/gesture/GestureLibrary;

    move-result-object v0

    .line 184
    .local v0, store:Landroid/gesture/GestureLibrary;
    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;

    invoke-virtual {v0, v1, v2}, Landroid/gesture/GestureLibrary;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 185
    invoke-virtual {v0}, Landroid/gesture/GestureLibrary;->save()Z

    .line 186
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/GestureCreateActivity;->setResult(I)V

    .line 191
    .end local v0           #store:Landroid/gesture/GestureLibrary;
    :goto_1
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->finish()V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lidroid/parts/GestureCreateActivity;->setResult(I)V

    goto :goto_1
.end method

.method public cancelGesture(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/GestureCreateActivity;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->finish()V

    .line 197
    return-void
.end method

.method completeSetCustomApp(Landroid/content/Intent;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 326
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    .line 327
    iget-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 330
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 335
    const-string v2, "null"

    iput-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mDrawLabel:Landroid/widget/TextView;

    const v3, 0x7f080044

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/lidroid/parts/GestureCreateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "___"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mUri:Ljava/lang/String;

    .line 339
    iget-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mRunInBackground:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 340
    return-void

    .line 331
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method completeSetCustomShortcut(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 314
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 315
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 317
    const-string v1, "null"

    iput-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mDrawLabel:Landroid/widget/TextView;

    const v2, 0x7f080044

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/lidroid/parts/GestureCreateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mUri:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->disableCheckbox()V

    .line 322
    return-void
.end method

.method disableCheckbox()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mRunInBackground:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 344
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mRunInBackground:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 345
    return-void
.end method

.method public isThereASimilarGesture(Landroid/gesture/Gesture;)Z
    .locals 8
    .parameter "gesture"

    .prologue
    .line 227
    invoke-static {}, Lcom/lidroid/parts/GestureListActivity;->getStore()Landroid/gesture/GestureLibrary;

    move-result-object v3

    .line 228
    .local v3, store:Landroid/gesture/GestureLibrary;
    invoke-virtual {v3, p1}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v2

    .line 230
    .local v2, predictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gesture/Prediction;

    .line 231
    .local v1, prediction:Landroid/gesture/Prediction;
    iget-wide v4, v1, Landroid/gesture/Prediction;->score:D

    iget-wide v6, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGestureSensitivity:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 232
    const/4 v4, 0x1

    .line 236
    .end local v1           #prediction:Landroid/gesture/Prediction;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 282
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 285
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/lidroid/parts/GestureCreateActivity;->completeSetCustomApp(Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/lidroid/parts/GestureCreateActivity;->completeSetCustomShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 291
    :pswitch_2
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p0, p3, v0, v1}, Lcom/lidroid/parts/GestureCreateActivity;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f090004

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Lcom/lidroid/parts/GestureCreateActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0, v11}, Lcom/lidroid/parts/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/lidroid/parts/GestureCreateActivity;->mDoneButton:Landroid/view/View;

    .line 82
    const v8, 0x7f090002

    invoke-virtual {p0, v8}, Lcom/lidroid/parts/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lidroid/parts/GestureCreateActivity;->mDrawLabel:Landroid/widget/TextView;

    .line 83
    const v8, 0x7f090001

    invoke-virtual {p0, v8}, Lcom/lidroid/parts/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/lidroid/parts/GestureCreateActivity;->mRunInBackground:Landroid/widget/CheckBox;

    .line 84
    const/high16 v8, 0x7f09

    invoke-virtual {p0, v8}, Lcom/lidroid/parts/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/lidroid/parts/GestureCreateActivity;->mActionPicker:Landroid/widget/Spinner;

    .line 85
    iget-object v8, p0, Lcom/lidroid/parts/GestureCreateActivity;->mActionPicker:Landroid/widget/Spinner;

    new-instance v9, Lcom/lidroid/parts/GestureCreateActivity$1;

    invoke-direct {v9, p0}, Lcom/lidroid/parts/GestureCreateActivity$1;-><init>(Lcom/lidroid/parts/GestureCreateActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 106
    const v8, 0x7f090003

    invoke-virtual {p0, v8}, Lcom/lidroid/parts/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureOverlayView;

    .line 107
    .local v5, overlay:Landroid/gesture/GestureOverlayView;
    new-instance v8, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;-><init>(Lcom/lidroid/parts/GestureCreateActivity;Lcom/lidroid/parts/GestureCreateActivity$1;)V

    invoke-virtual {v5, v8}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 110
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 112
    .local v4, l:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, entries:[Ljava/lang/CharSequence;
    array-length v8, v1

    new-array v2, v8, [Ljava/lang/String;

    .line 117
    .local v2, entriesShort:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_0

    .line 118
    aget-object v8, v1, v3

    aput-object v8, v2, v3

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_0
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v7, p0, v8, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 121
    .local v7, spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 123
    iget-object v8, p0, Lcom/lidroid/parts/GestureCreateActivity;->mActionPicker:Landroid/widget/Spinner;

    invoke-virtual {v8, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 126
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entriesShort:[Ljava/lang/CharSequence;
    .end local v3           #i:I
    .end local v7           #spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lockscreen_gestures_sensitivity"

    const/4 v10, 0x3

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    iput-wide v8, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGestureSensitivity:D

    .line 130
    invoke-virtual {p0, v11}, Lcom/lidroid/parts/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 131
    .local v0, btn:Landroid/widget/Button;
    new-instance v8, Lcom/lidroid/parts/GestureCreateActivity$2;

    invoke-direct {v8, p0}, Lcom/lidroid/parts/GestureCreateActivity$2;-><init>(Lcom/lidroid/parts/GestureCreateActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v8, 0x7f090005

    invoke-virtual {p0, v8}, Lcom/lidroid/parts/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 138
    .restart local v0       #btn:Landroid/widget/Button;
    new-instance v8, Lcom/lidroid/parts/GestureCreateActivity$3;

    invoke-direct {v8, p0}, Lcom/lidroid/parts/GestureCreateActivity$3;-><init>(Lcom/lidroid/parts/GestureCreateActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v1, "gesture"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/gesture/Gesture;

    iput-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;

    .line 159
    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;

    if-eqz v1, :cond_0

    .line 160
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    .line 161
    .local v0, overlay:Landroid/gesture/GestureOverlayView;
    new-instance v1, Lcom/lidroid/parts/GestureCreateActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/lidroid/parts/GestureCreateActivity$4;-><init>(Lcom/lidroid/parts/GestureCreateActivity;Landroid/gesture/GestureOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 167
    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mDoneButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 169
    .end local v0           #overlay:Landroid/gesture/GestureOverlayView;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "gesture"

    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    :cond_0
    return-void
.end method

.method public pickFlashlight()V
    .locals 5

    .prologue
    .line 274
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/GestureCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mDrawLabel:Landroid/widget/TextView;

    const v1, 0x7f080044

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lidroid/parts/GestureCreateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "___FLASHLIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mUri:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->disableCheckbox()V

    .line 278
    return-void
.end method

.method public pickShortcut()V
    .locals 7

    .prologue
    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v3, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/lidroid/parts/GestureCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v2, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    const v4, 0x7f020001

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    const-string v4, "android.intent.extra.TITLE"

    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/lidroid/parts/GestureCreateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 254
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/lidroid/parts/GestureCreateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    return-void
.end method

.method public pickSoundOnly()V
    .locals 5

    .prologue
    .line 267
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/GestureCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mDrawLabel:Landroid/widget/TextView;

    const v1, 0x7f080044

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lidroid/parts/GestureCreateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "___SOUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mUri:Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->disableCheckbox()V

    .line 271
    return-void
.end method

.method public pickUnlockOnly()V
    .locals 5

    .prologue
    .line 260
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/GestureCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mDrawLabel:Landroid/widget/TextView;

    const v1, 0x7f080044

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lidroid/parts/GestureCreateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "___UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity;->mUri:Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->disableCheckbox()V

    .line 264
    return-void
.end method

.method processShortcut(Landroid/content/Intent;II)V
    .locals 6
    .parameter "intent"
    .parameter "requestCodeApplication"
    .parameter "requestCodeShortcut"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v2, p2}, Lcom/lidroid/parts/GestureCreateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/lidroid/parts/GestureCreateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
