.class public Landroid/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private aMonths:[Ljava/lang/String;

.field private aWeekDays:[Ljava/lang/String;

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private mTitleDateFormat:Ljava/text/SimpleDateFormat;

.field private final mWeekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 272
    new-instance v3, Landroid/app/DatePickerDialog$1;

    invoke-direct {v3, p0}, Landroid/app/DatePickerDialog$1;-><init>(Landroid/app/DatePickerDialog;)V

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 142
    iput-object p3, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 143
    iput p4, p0, Landroid/app/DatePickerDialog;->mInitialYear:I

    .line 144
    iput p5, p0, Landroid/app/DatePickerDialog;->mInitialMonth:I

    .line 145
    iput p6, p0, Landroid/app/DatePickerDialog;->mInitialDay:I

    .line 146
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 147
    .local v1, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 149
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DatePickerDialog;->aWeekDays:[Ljava/lang/String;

    .line 150
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DatePickerDialog;->aMonths:[Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    .line 182
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EEEEE, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MM"

    const-string v7, "MMM"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 185
    iget v3, p0, Landroid/app/DatePickerDialog;->mInitialYear:I

    iget v4, p0, Landroid/app/DatePickerDialog;->mInitialMonth:I

    iget v5, p0, Landroid/app/DatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Landroid/app/DatePickerDialog;->updateTitle(III)V

    .line 187
    const v3, 0x10403c7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Landroid/app/DatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 188
    const/high16 v3, 0x104

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Landroid/app/DatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 189
    const v3, 0x108019d

    invoke-virtual {p0, v3}, Landroid/app/DatePickerDialog;->setIcon(I)V

    .line 191
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 193
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090022

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 195
    const v3, 0x10201be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 196
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget v4, p0, Landroid/app/DatePickerDialog;->mInitialYear:I

    iget v5, p0, Landroid/app/DatePickerDialog;->mInitialMonth:I

    iget v6, p0, Landroid/app/DatePickerDialog;->mInitialDay:I

    invoke-virtual {v3, v4, v5, v6, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 211
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 122
    const v2, 0x10300a7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/DatePickerDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private updateTitle(III)V
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 329
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 330
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 331
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 369
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 306
    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 309
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 314
    :cond_1
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 318
    invoke-direct {p0, p2, p3, p4}, Landroid/app/DatePickerDialog;->updateTitle(III)V

    .line 319
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 386
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 387
    .local v2, year:I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 388
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 389
    .local v0, day:I
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 390
    invoke-direct {p0, v2, v1, v0}, Landroid/app/DatePickerDialog;->updateTitle(III)V

    .line 391
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 377
    .local v0, state:Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    const-string v1, "month"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string v1, "day"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    return-object v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->clearFocus()V

    .line 258
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 269
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 216
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 220
    .local v0, cacheCalendar:Ljava/util/Calendar;
    iget v4, p0, Landroid/app/DatePickerDialog;->mInitialYear:I

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 221
    const/4 v4, 0x2

    iget v5, p0, Landroid/app/DatePickerDialog;->mInitialMonth:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 222
    const/4 v4, 0x5

    iget v5, p0, Landroid/app/DatePickerDialog;->mInitialDay:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 224
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 225
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, language:Ljava/lang/String;
    const-string v4, "ar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fa"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ur"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 237
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    const v4, 0x1020192

    invoke-virtual {p0, v4}, Landroid/app/DatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    .local v3, title:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 245
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 246
    return-void

    .line 228
    .end local v3           #title:Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040051

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 229
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040052

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 230
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040053

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 231
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040054

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 232
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040055

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 233
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040056

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 234
    :pswitch_6
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040057

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public twSetRangeOfYear(II)V
    .locals 1
    .parameter "startYear"
    .parameter "endYear"

    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DatePicker;->twSetRangeOfYear(II)V

    .line 291
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 322
    iput p1, p0, Landroid/app/DatePickerDialog;->mInitialYear:I

    .line 323
    iput p2, p0, Landroid/app/DatePickerDialog;->mInitialMonth:I

    .line 324
    iput p3, p0, Landroid/app/DatePickerDialog;->mInitialDay:I

    .line 325
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 326
    return-void
.end method
