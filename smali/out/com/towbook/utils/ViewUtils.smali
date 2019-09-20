.class public Lcom/towbook/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final DAY_MILLIS:I = 0x5265c00

.field private static final HOUR_MILLIS:I = 0x36ee80

.field private static final MINUTE_MILLIS:I = 0xea60

.field private static final SECOND_MILLIS:I = 0x3e8

.field private static final SHADE_FACTOR:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "[Towbook-ViewUtils]"

.field private static clearTime:Ljava/util/Date;

.field public static dateFormat:Ljava/text/SimpleDateFormat;

.field private static dateFormatLater:Ljava/text/DateFormat;

.field private static isTodayFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aaa M/d/yy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/towbook/utils/ViewUtils;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 106
    new-instance v0, Ljava/util/Date;

    const-wide v1, -0x38831b66e780L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    .line 107
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE\'.\' MMM dd \'at\' h:mm aaa"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/towbook/utils/ViewUtils;->dateFormatLater:Ljava/text/DateFormat;

    .line 108
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm aaa"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/towbook/utils/ViewUtils;->isTodayFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccountSelector(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 478
    invoke-static/range {v0 .. v9}, Lcom/towbook/utils/ViewUtils;->addAccountSelector(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V

    return-void
.end method

.method public static addAccountSelector(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V
    .registers 11

    const/4 p2, 0x1

    .line 483
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 485
    invoke-virtual {p8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p5, 0x7f0b0106

    const/4 v0, 0x0

    invoke-virtual {p2, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const p5, 0x7f09018d

    .line 487
    invoke-virtual {p2, p5}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/EditText;

    .line 488
    invoke-virtual {p5, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {p5, p4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 490
    invoke-virtual {p5, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p3, 0x7f090555

    .line 492
    invoke-virtual {p2, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 493
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09008e

    .line 495
    invoke-virtual {p2, p1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 496
    invoke-virtual {p1, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {p1, p7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f090351

    .line 499
    invoke-virtual {p2, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    const/16 p6, 0x8

    .line 500
    invoke-virtual {p3, p6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 501
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Notes"

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    if-eqz p9, :cond_6b

    const/4 p3, 0x0

    .line 504
    invoke-virtual {p5, p3}, Landroid/widget/EditText;->setEnabled(Z)V

    const/4 p3, 0x4

    .line 505
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 508
    :cond_6b
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 509
    invoke-virtual {p8, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addAccountSpinnerToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Landroid/app/Activity;ZLandroid/widget/Button;)Landroid/widget/RelativeLayout;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/TableLayout;",
            "Ljava/lang/String;",
            "Landroid/widget/Spinner;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Z",
            "Landroid/widget/Button;",
            ")",
            "Landroid/widget/RelativeLayout;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 442
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 443
    invoke-virtual {p7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b0131

    const/4 p9, 0x0

    invoke-virtual {p1, p2, p9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    .line 445
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "row_"

    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f0903ef

    .line 452
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    .line 453
    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 455
    new-instance p3, Landroid/widget/ArrayAdapter;

    const p9, 0x7f0b003e

    invoke-direct {p3, p7, p9, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p4, 0x7f0b003d

    .line 456
    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 457
    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 458
    invoke-virtual {p2, p5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 459
    invoke-virtual {p2, p6}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f090351

    .line 461
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    if-eqz p8, :cond_59

    const/4 p3, 0x0

    .line 464
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5e

    :cond_59
    const/16 p3, 0x8

    .line 466
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 468
    :goto_5e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Notes"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 470
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 471
    invoke-virtual {p7, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object p2
.end method

.method public static addCheckboxToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/CheckBox;Ljava/lang/String;Landroid/app/Activity;)Landroid/widget/TableRow;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 608
    invoke-static/range {v0 .. v5}, Lcom/towbook/utils/ViewUtils;->addCheckboxToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/CheckBox;Ljava/lang/String;Landroid/app/Activity;Z)Landroid/widget/TableRow;

    move-result-object p0

    return-object p0
.end method

.method public static addCheckboxToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/CheckBox;Ljava/lang/String;Landroid/app/Activity;Z)Landroid/widget/TableRow;
    .registers 8

    const/4 p2, 0x1

    .line 613
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 614
    invoke-virtual {p4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0125

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const v0, 0x7f0900f8

    .line 616
    invoke-virtual {p2, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 617
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 618
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_27

    const/4 p1, 0x0

    .line 621
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 624
    :cond_27
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 625
    invoke-virtual {p4, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object p2
.end method

.method public static addCheckboxToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Landroid/app/Activity;)Landroid/widget/TableRow;
    .registers 7

    const/4 p2, 0x1

    .line 553
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 554
    invoke-virtual {p4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0130

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const v0, 0x7f090555

    .line 555
    invoke-virtual {p2, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 556
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 557
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const p1, 0x7f0903ef

    .line 559
    invoke-virtual {p2, p1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 560
    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 562
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 563
    invoke-virtual {p4, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object p2
.end method

.method public static addEditTextNotesToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;)V
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 227
    invoke-static/range {v0 .. v9}, Lcom/towbook/utils/ViewUtils;->addEditTextNotesToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;Z)V

    return-void
.end method

.method public static addEditTextNotesToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;Z)V
    .registers 12

    const/4 p2, 0x1

    .line 232
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 233
    invoke-virtual {p8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p7

    const v0, 0x7f0b012d

    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/TableRow;

    const v0, 0x7f090555

    .line 234
    invoke-virtual {p7, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 235
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 236
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v0, 0x7f090181

    .line 238
    invoke-virtual {p7, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 239
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 p3, 0x80000

    or-int/2addr p3, p6

    .line 241
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 242
    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    if-eqz p9, :cond_45

    .line 246
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 247
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 250
    :cond_45
    invoke-virtual {p0, p7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {p8, p7}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addEditTextToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;)Landroid/widget/EditText;
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 113
    invoke-static/range {v0 .. v9}, Lcom/towbook/utils/ViewUtils;->addEditTextToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;Z)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public static addEditTextToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;Z)Landroid/widget/EditText;
    .registers 11

    const/4 p2, 0x1

    .line 119
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 121
    invoke-virtual {p8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0129

    const/4 p7, 0x0

    invoke-virtual {p2, p3, p7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const p3, 0x7f090555

    .line 122
    invoke-virtual {p2, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 124
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_wrapper"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p2, p7}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090181

    .line 127
    invoke-virtual {p2, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 128
    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 p4, 0x80000

    or-int/2addr p4, p6

    .line 129
    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setInputType(I)V

    .line 130
    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p9, :cond_50

    const/4 p1, 0x0

    .line 134
    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 137
    :cond_50
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p8, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object p3
.end method

.method public static addEditTextToTableForComplete(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;FLjava/lang/Boolean;)Landroid/widget/EditText;
    .registers 11

    const/4 p2, 0x1

    .line 257
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 258
    invoke-virtual {p8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p7, 0x7f0b0117

    const/4 p9, 0x0

    invoke-virtual {p2, p7, p9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const p7, 0x7f090555

    .line 259
    invoke-virtual {p2, p7}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/TextView;

    .line 260
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 261
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const p7, 0x7f090181

    .line 263
    invoke-virtual {p2, p7}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/EditText;

    .line 264
    invoke-virtual {p7, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_37

    .line 266
    invoke-virtual {p7, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 267
    :cond_37
    invoke-virtual {p7, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p7, p6}, Landroid/widget/EditText;->setInputType(I)V

    .line 269
    invoke-virtual {p7, p5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 272
    invoke-virtual {p8, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object p7
.end method

.method public static addFuelSurchargeToTableForEditTotal(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;IZ)V
    .registers 23

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 329
    invoke-static/range {v0 .. v11}, Lcom/towbook/utils/ViewUtils;->addFuelSurchargeToTableForEditTotal(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;IZZ)V

    return-void
.end method

.method public static addFuelSurchargeToTableForEditTotal(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;IZZ)V
    .registers 14

    const/4 p2, 0x1

    .line 336
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 337
    invoke-virtual {p8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p7, 0x7f0b0143

    const/4 p9, 0x0

    invoke-virtual {p2, p7, p9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const p7, 0x7f090555

    .line 338
    invoke-virtual {p2, p7}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/TextView;

    const p9, 0x7f0900c0

    .line 340
    invoke-virtual {p2, p9}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p9

    check-cast p9, Landroid/widget/Button;

    const-string v0, "btFuelSurcharge"

    .line 341
    invoke-virtual {p9, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f090193

    .line 343
    invoke-virtual {p2, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "etFuelSurcharge"

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 346
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 347
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const p7, 0x7f0904eb

    .line 349
    invoke-virtual {p2, p7}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/TextView;

    .line 350
    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 352
    invoke-virtual {p7, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p7, p6}, Landroid/widget/TextView;->setInputType(I)V

    .line 354
    invoke-virtual {p7, p5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz p10, :cond_5c

    const/4 p3, 0x5

    .line 357
    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_5c
    if-eqz p11, :cond_71

    const/16 p3, 0x8

    .line 360
    invoke-virtual {p9, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    invoke-virtual {p7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p4, 0xe

    .line 363
    invoke-virtual {p3, p1, p1, p4, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 364
    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    :cond_71
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 368
    invoke-virtual {p8, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addLayoutVin(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 23

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 632
    invoke-static/range {v0 .. v11}, Lcom/towbook/utils/ViewUtils;->addLayoutVin(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V

    return-void
.end method

.method public static addLayoutVin(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V
    .registers 12

    const/4 p1, 0x1

    .line 637
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 638
    invoke-virtual {p10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b012f

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    const p2, 0x7f090181

    .line 640
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 641
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 p3, 0x80000

    or-int/2addr p3, p6

    .line 642
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 643
    invoke-virtual {p2, p5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0900c2

    .line 645
    invoke-virtual {p1, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 646
    invoke-virtual {p3, p9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    if-eqz p11, :cond_40

    const/4 p4, 0x0

    .line 649
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 650
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 p2, 0x4

    .line 651
    invoke-virtual {p3, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 654
    :cond_40
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 655
    invoke-virtual {p10, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addMakeModelYear(Landroid/widget/TableLayout;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 660
    invoke-static/range {v0 .. v8}, Lcom/towbook/utils/ViewUtils;->addMakeModelYear(Landroid/widget/TableLayout;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V

    return-void
.end method

.method public static addMakeModelYear(Landroid/widget/TableLayout;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V
    .registers 10

    const/4 p1, 0x1

    .line 664
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 665
    invoke-virtual {p7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p4, 0x7f0b013b

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    const p4, 0x7f090549

    .line 666
    invoke-virtual {p1, p4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 668
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f0900c2

    .line 670
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 671
    invoke-virtual {p2, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 672
    invoke-virtual {p2, p6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    if-eqz p8, :cond_3a

    const/4 p3, 0x0

    .line 675
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 p3, 0x4

    .line 676
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 679
    :cond_3a
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 680
    invoke-virtual {p7, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addMultiSpinnerToTable(Landroid/widget/TableLayout;Ljava/lang/String;Lcom/thomashaertel/widget/MultiSpinner;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Landroid/app/Activity;Lcom/thomashaertel/widget/MultiSpinner$MultiSpinnerListener;)Lcom/thomashaertel/widget/MultiSpinner;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/TableLayout;",
            "Ljava/lang/String;",
            "Lcom/thomashaertel/widget/MultiSpinner;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/thomashaertel/widget/MultiSpinner$MultiSpinnerListener;",
            ")",
            "Lcom/thomashaertel/widget/MultiSpinner;"
        }
    .end annotation

    const/4 p2, 0x1

    .line 412
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 413
    invoke-virtual {p7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b012c

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    .line 415
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "row_"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f090555

    .line 417
    invoke-virtual {p2, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 418
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 420
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const p3, 0x7f0903ef

    .line 422
    invoke-virtual {p2, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/thomashaertel/widget/MultiSpinner;

    .line 425
    new-instance p5, Landroid/widget/ArrayAdapter;

    const v0, 0x7f0b003e

    invoke-direct {p5, p7, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p4, 0x7f0b003d

    .line 426
    invoke-virtual {p5, p4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 428
    invoke-virtual {p3, p5, p1, p8}, Lcom/thomashaertel/widget/MultiSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;ZLcom/thomashaertel/widget/MultiSpinner$MultiSpinnerListener;)V

    .line 431
    invoke-virtual {p3, p6}, Lcom/thomashaertel/widget/MultiSpinner;->setTag(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 434
    invoke-virtual {p7, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object p3
.end method

.method public static addNotesToTableRow(Landroid/widget/TableLayout;Ljava/util/List;Landroid/app/Activity;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Lcom/towbook/api/Notes;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1389
    invoke-virtual {p0}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v0, 0x1

    .line 1390
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 1391
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Notes;

    .line 1392
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0146

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    const v4, 0x7f0903ee

    .line 1396
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1397
    invoke-virtual {v1}, Lcom/towbook/api/Notes;->getAuthorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v4, 0x7f09055e

    .line 1400
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1401
    invoke-virtual {v1}, Lcom/towbook/api/Notes;->getCreateDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/towbook/utils/AppUtils;->getTimeAgo(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v4, 0x7f090540

    .line 1404
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1405
    invoke-virtual {v1}, Lcom/towbook/api/Notes;->getDisplayContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1408
    invoke-virtual {p0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1409
    invoke-virtual {p2, v3}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_b

    .line 1412
    :cond_6e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7a

    const/16 p1, 0x8

    .line 1413
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_7d

    .line 1415
    :cond_7a
    invoke-virtual {p0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    :goto_7d
    return-void
.end method

.method public static addPlate(Landroid/widget/TableLayout;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZLjava/lang/String;)V
    .registers 25

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    .line 687
    invoke-static/range {v0 .. v12}, Lcom/towbook/utils/ViewUtils;->addPlate(Landroid/widget/TableLayout;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZLjava/lang/String;Z)V

    return-void
.end method

.method public static addPlate(Landroid/widget/TableLayout;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZLjava/lang/String;Z)V
    .registers 13

    const/4 p1, 0x1

    .line 693
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 694
    invoke-virtual {p9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p5, 0x7f0b012e

    const/4 p10, 0x0

    invoke-virtual {p1, p5, p10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    const p5, 0x7f0901a4

    .line 696
    invoke-virtual {p1, p5}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/EditText;

    .line 697
    invoke-virtual {p5, p4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/16 p4, 0x1000

    .line 698
    invoke-virtual {p5, p4}, Landroid/widget/EditText;->setInputType(I)V

    .line 699
    invoke-virtual {p5, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 700
    invoke-virtual {p5, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p2, 0x7f0901a5

    .line 702
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 703
    invoke-virtual {p2, p8}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 704
    invoke-virtual {p2, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x81000

    .line 705
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 706
    invoke-virtual {p2, p7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p12, :cond_50

    const/4 p3, 0x0

    .line 709
    invoke-virtual {p5, p3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 710
    invoke-virtual {p5, p3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 711
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 712
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 715
    :cond_50
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 716
    invoke-virtual {p9, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addPreviousStatuses(Landroid/widget/TableLayout;Lcom/towbook/api/Call;Ljava/lang/String;Landroid/content/Context;Z)Landroid/widget/TableRow;
    .registers 10

    const/4 v0, 0x1

    .line 1543
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    const-string v0, "layout_inflater"

    .line 1544
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0b0132

    .line 1546
    invoke-virtual {p3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TableRow;

    const v1, 0x7f090555

    .line 1547
    invoke-virtual {p3, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1549
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x5

    .line 1550
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    .line 1551
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const-string v3, "Waiting"

    .line 1553
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getCreateDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 1554
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getCreateDate()Ljava/util/Date;

    move-result-object v3

    sget-object v4, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1555
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getCreateDate()Ljava/util/Date;

    move-result-object p1

    move-object v3, p1

    move-object p1, v0

    goto/16 :goto_123

    :cond_4c
    const-string v3, "Dispatched"

    .line 1556
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getDispatchTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 1557
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getDispatchTime()Ljava/util/Date;

    move-result-object v3

    sget-object v4, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 1558
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getDispatchTime()Ljava/util/Date;

    move-result-object v3

    .line 1559
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getCreateDate()Ljava/util/Date;

    move-result-object p1

    goto/16 :goto_123

    :cond_70
    const-string v3, "En route"

    .line 1560
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getEnrouteTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_94

    .line 1561
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getEnrouteTime()Ljava/util/Date;

    move-result-object v3

    sget-object v4, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94

    .line 1562
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getEnrouteTime()Ljava/util/Date;

    move-result-object v3

    .line 1563
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getDispatchTime()Ljava/util/Date;

    move-result-object p1

    goto/16 :goto_123

    :cond_94
    const-string v3, "On Scene"

    .line 1564
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getArrivalTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_b8

    .line 1565
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getArrivalTime()Ljava/util/Date;

    move-result-object v3

    sget-object v4, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 1566
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getArrivalTime()Ljava/util/Date;

    move-result-object v3

    .line 1567
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getEnrouteTime()Ljava/util/Date;

    move-result-object p1

    goto/16 :goto_123

    :cond_b8
    const-string v3, "Towing"

    .line 1568
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getTowTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_db

    .line 1569
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getTowTime()Ljava/util/Date;

    move-result-object v3

    sget-object v4, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    .line 1570
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getTowTime()Ljava/util/Date;

    move-result-object v3

    .line 1571
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getArrivalTime()Ljava/util/Date;

    move-result-object p1

    goto :goto_123

    :cond_db
    const-string v3, "Destination Arrival"

    .line 1572
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getDestinationArrivalTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_fe

    .line 1573
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getDestinationArrivalTime()Ljava/util/Date;

    move-result-object v3

    sget-object v4, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fe

    .line 1574
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getDestinationArrivalTime()Ljava/util/Date;

    move-result-object v3

    .line 1575
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getTowTime()Ljava/util/Date;

    move-result-object p1

    goto :goto_123

    :cond_fe
    const-string v3, "Completed"

    .line 1576
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getCompletionTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_121

    .line 1577
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getCompletionTime()Ljava/util/Date;

    move-result-object v3

    sget-object v4, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_121

    .line 1578
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getCompletionTime()Ljava/util/Date;

    move-result-object v3

    .line 1579
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getDestinationArrivalTime()Ljava/util/Date;

    move-result-object p1

    goto :goto_123

    :cond_121
    move-object p1, v0

    move-object v3, p1

    :goto_123
    if-eqz v3, :cond_13d

    const-string v4, "Completed"

    .line 1586
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_138

    .line 1587
    invoke-virtual {v3, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13f

    .line 1588
    invoke-static {v3}, Lcom/towbook/utils/ViewUtils;->formatDateForTodayOrOther(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13f

    .line 1590
    :cond_138
    invoke-static {v3}, Lcom/towbook/utils/ViewUtils;->formatDateForTodayOrOther(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13f

    :cond_13d
    const-string v0, ""

    :cond_13f
    :goto_13f
    const p1, 0x7f09055e

    .line 1596
    invoke-virtual {p3, p1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1597
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    if-eqz p4, :cond_156

    .line 1601
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1602
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1605
    :cond_156
    invoke-virtual {p0, p3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-object p3
.end method

.method public static addPreviousStatuses(Landroid/widget/TableLayout;Ljava/util/List;Lcom/towbook/api/stickering/Sticker;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Lcom/towbook/api/Status;",
            ">;",
            "Lcom/towbook/api/stickering/Sticker;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1623
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    const-string p1, "layout_inflater"

    .line 1624
    invoke-virtual {p5, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 p4, 0x0

    const p5, 0x7f0b0133

    .line 1626
    invoke-virtual {p1, p5, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    const p5, 0x7f090555

    .line 1627
    invoke-virtual {p1, p5}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    .line 1629
    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x5

    .line 1630
    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x0

    .line 1631
    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const-string p5, "Waiting"

    .line 1633
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_37

    .line 1634
    invoke-virtual {p2}, Lcom/towbook/api/stickering/Sticker;->getCreateDate()Ljava/util/Date;

    move-result-object p4

    goto :goto_5d

    :cond_37
    const-string p5, "Rejected"

    .line 1635
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_44

    .line 1636
    invoke-virtual {p2}, Lcom/towbook/api/stickering/Sticker;->getCreateDate()Ljava/util/Date;

    move-result-object p4

    goto :goto_5d

    :cond_44
    const-string p5, "Approved"

    .line 1637
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_51

    .line 1638
    invoke-virtual {p2}, Lcom/towbook/api/stickering/Sticker;->getCreateDate()Ljava/util/Date;

    move-result-object p4

    goto :goto_5d

    :cond_51
    const-string p5, "Resolved"

    .line 1639
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5d

    .line 1640
    invoke-virtual {p2}, Lcom/towbook/api/stickering/Sticker;->getCreateDate()Ljava/util/Date;

    move-result-object p4

    :cond_5d
    :goto_5d
    if-eqz p4, :cond_66

    .line 1645
    sget-object p2, Lcom/towbook/utils/ViewUtils;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_68

    :cond_66
    const-string p2, "N/A"

    :goto_68
    const p3, 0x7f09055e

    .line 1650
    invoke-virtual {p1, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1651
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1652
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1654
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p4, 0xe6

    .line 1655
    invoke-virtual {p2, p4, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 p4, -0x1

    .line 1656
    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1657
    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1658
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1660
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static addSpinnerToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Landroid/app/Activity;)Landroid/widget/Spinner;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/TableLayout;",
            "Ljava/lang/String;",
            "Landroid/widget/Spinner;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")",
            "Landroid/widget/Spinner;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 374
    invoke-static/range {v0 .. v8}, Lcom/towbook/utils/ViewUtils;->addSpinnerToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Landroid/app/Activity;Z)Landroid/widget/Spinner;

    move-result-object v0

    return-object v0
.end method

.method public static addSpinnerToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Landroid/app/Activity;Z)Landroid/widget/Spinner;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/TableLayout;",
            "Ljava/lang/String;",
            "Landroid/widget/Spinner;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Z)",
            "Landroid/widget/Spinner;"
        }
    .end annotation

    const/4 p2, 0x1

    .line 380
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 381
    invoke-virtual {p7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0130

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "row_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f090555

    .line 385
    invoke-virtual {p2, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 386
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 388
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v0, 0x7f0903ef

    .line 390
    invoke-virtual {p2, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 391
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 393
    new-instance p3, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0b003e

    invoke-direct {p3, p7, v1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p4, 0x7f0b003d

    .line 394
    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 395
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 396
    invoke-virtual {v0, p5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 397
    invoke-virtual {v0, p6}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    if-eqz p8, :cond_5e

    .line 400
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 403
    :cond_5e
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 404
    invoke-virtual {p7, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object v0
.end method

.method public static addSpinnerToTableForComplete(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Landroid/app/Activity;F)Landroid/widget/Spinner;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/TableLayout;",
            "Ljava/lang/String;",
            "Landroid/widget/Spinner;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "F)",
            "Landroid/widget/Spinner;"
        }
    .end annotation

    const/4 p2, 0x1

    .line 523
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 524
    invoke-virtual {p7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p8, 0x7f0b0130

    const/4 v0, 0x0

    invoke-virtual {p2, p8, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const p8, 0x7f090555

    .line 525
    invoke-virtual {p2, p8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p8

    check-cast p8, Landroid/widget/TextView;

    .line 526
    invoke-virtual {p8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 527
    invoke-virtual {p8, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const p8, 0x7f0903ef

    .line 529
    invoke-virtual {p2, p8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p8

    check-cast p8, Landroid/widget/Spinner;

    .line 530
    invoke-virtual {p8, p3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 532
    new-instance p3, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {p3, p7, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p4, 0x1090009

    .line 534
    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 535
    invoke-virtual {p8, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 536
    invoke-virtual {p8, p5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 537
    invoke-virtual {p8, p6}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 539
    new-instance p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p8}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    invoke-virtual {p7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f0700eb

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p3, p4, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 p1, -0x1

    .line 541
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 542
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 543
    invoke-virtual {p8, p1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 546
    invoke-virtual {p7, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object p8
.end method

.method public static addStickerNotesToTableRow(Landroid/widget/TableLayout;Ljava/util/List;Landroid/app/Activity;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerNote;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/stickering/StickerNote;

    .line 1381
    new-instance v2, Lcom/towbook/api/Notes;

    invoke-virtual {v1}, Lcom/towbook/api/stickering/StickerNote;->getUserFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/towbook/api/stickering/StickerNote;->getCreateDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1}, Lcom/towbook/api/stickering/StickerNote;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/towbook/api/Notes;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1384
    :cond_2a
    invoke-static {p0, v0, p2}, Lcom/towbook/utils/ViewUtils;->addNotesToTableRow(Landroid/widget/TableLayout;Ljava/util/List;Landroid/app/Activity;)V

    return-void
.end method

.method public static addTableRowDetails(Landroid/widget/TableLayout;Ljava/util/List;Landroid/content/Context;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemDetail;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v0, 0x1

    .line 855
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 856
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/classes/ItemDetail;

    if-nez v0, :cond_1a

    goto :goto_b

    .line 861
    :cond_1a
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/towbook/utils/AppUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/towbook/utils/AppUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_b

    .line 864
    :cond_2f
    move-object v1, p2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b011f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v2, 0x7f090555

    .line 866
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 867
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 868
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 870
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v2}, Lcom/towbook/mobile/TowbookApplication;->getConfig()Lcom/towbook/api/ConfigSettings;

    move-result-object v2

    .line 871
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Driver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 872
    invoke-virtual {v2}, Lcom/towbook/api/ConfigSettings;->getDrivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_76
    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/towbook/api/Driver;

    .line 873
    invoke-virtual {v4}, Lcom/towbook/api/Driver;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 874
    invoke-virtual {v4}, Lcom/towbook/api/Driver;->getMobilePhone()Ljava/lang/String;

    goto :goto_76

    :cond_94
    const v2, 0x7f09055e

    .line 886
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 887
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 889
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_b8
    return-void
.end method

.method public static addTableRowDetailsAccount(Landroid/widget/TableLayout;Ljava/util/List;Landroid/app/Activity;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemDetail;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1348
    invoke-virtual {p0}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v0, 0x1

    .line 1349
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 1350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/classes/ItemDetail;

    .line 1351
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/towbook/utils/AppUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_b

    .line 1354
    :cond_22
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b011e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v2, 0x7f0903ee

    .line 1356
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1357
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 1358
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v2, 0x7f09055e

    .line 1360
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1361
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1364
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1366
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1367
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v3, -0x1

    .line 1368
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1369
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1370
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1373
    invoke-virtual {p2, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_b

    :cond_88
    return-void
.end method

.method public static addTableRowDetailsSticker(Landroid/widget/TableLayout;Ljava/util/List;Landroid/app/Activity;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemDetail;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1665
    invoke-virtual {p0}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v0, 0x1

    .line 1666
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 1667
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/classes/ItemDetail;

    .line 1670
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/towbook/utils/AppUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/towbook/utils/AppUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_b

    .line 1673
    :cond_2c
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b011e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v2, 0x7f0903ee

    .line 1675
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1676
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 1677
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v2, 0x7f09055e

    .line 1679
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1680
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemDetail;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1682
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1683
    invoke-virtual {p2, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_b

    :cond_68
    return-void
.end method

.method public static addTextViewToTableForComplete(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;FZ)V
    .registers 11

    const/4 p2, 0x1

    .line 281
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 282
    invoke-virtual {p8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p7, 0x7f0b0133

    const/4 p9, 0x0

    invoke-virtual {p2, p7, p9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const p7, 0x7f090555

    .line 283
    invoke-virtual {p2, p7}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/TextView;

    .line 284
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 285
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const p7, 0x7f09055e

    .line 287
    invoke-virtual {p2, p7}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/TextView;

    .line 288
    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 290
    invoke-virtual {p7, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p7, p6}, Landroid/widget/TextView;->setInputType(I)V

    .line 292
    invoke-virtual {p7, p5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz p10, :cond_40

    const/4 p1, 0x5

    .line 295
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 297
    :cond_40
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 298
    invoke-virtual {p8, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addTextViewToTableForEditTotal(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;IZ)V
    .registers 11

    const/4 p2, 0x1

    .line 305
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 306
    invoke-virtual {p8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p7, 0x7f0b0142

    const/4 p9, 0x0

    invoke-virtual {p2, p7, p9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const p7, 0x7f090555

    .line 307
    invoke-virtual {p2, p7}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/TextView;

    .line 308
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 309
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const p7, 0x7f09055e

    .line 311
    invoke-virtual {p2, p7}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/TextView;

    .line 312
    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 314
    invoke-virtual {p7, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p7, p6}, Landroid/widget/TextView;->setInputType(I)V

    .line 316
    invoke-virtual {p7, p5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz p10, :cond_40

    const/4 p1, 0x5

    .line 319
    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 321
    :cond_40
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 322
    invoke-virtual {p8, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addToContactsLayout(Lcom/towbook/mobile/CallViewActivity;Landroid/widget/TableLayout;Ljava/util/List;Lcom/towbook/api/Call;)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/towbook/mobile/CallViewActivity;",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Lcom/towbook/api/Contact;",
            ">;",
            "Lcom/towbook/api/Call;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 915
    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 916
    invoke-virtual {p1}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 917
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a6

    .line 918
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Contact;

    .line 919
    invoke-virtual {v1}, Lcom/towbook/api/Contact;->getContactString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto/16 :goto_a2

    .line 922
    :cond_22
    invoke-virtual {p0}, Lcom/towbook/mobile/CallViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b011b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    const v3, 0x7f090123

    .line 924
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900c0

    .line 925
    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const/16 v5, 0x8

    .line 935
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v4, 0x7f0900bd

    .line 937
    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 938
    invoke-virtual {v1}, Lcom/towbook/api/Contact;->getPhone()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    .line 939
    new-instance v6, Lcom/towbook/utils/ViewUtils$1;

    invoke-direct {v6, p0, v1}, Lcom/towbook/utils/ViewUtils$1;-><init>(Lcom/towbook/mobile/CallViewActivity;Lcom/towbook/api/Contact;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_68

    .line 946
    :cond_65
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_68
    const v4, 0x7f0900c1

    .line 949
    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 950
    invoke-virtual {v1}, Lcom/towbook/api/Contact;->getEmail()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    .line 951
    new-instance v6, Lcom/towbook/utils/ViewUtils$2;

    invoke-direct {v6, p0, v1, p3}, Lcom/towbook/utils/ViewUtils$2;-><init>(Lcom/towbook/mobile/CallViewActivity;Lcom/towbook/api/Contact;Lcom/towbook/api/Call;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_89

    .line 958
    :cond_86
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 961
    :goto_89
    invoke-virtual {v1}, Lcom/towbook/api/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 964
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 966
    :cond_9f
    invoke-virtual {p1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    :goto_a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_a6
    return-void
.end method

.method public static addTowFromToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;)V
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 153
    invoke-static/range {v0 .. v10}, Lcom/towbook/utils/ViewUtils;->addTowFromToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;Z)V

    return-void
.end method

.method public static addTowFromToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/app/Activity;Z)V
    .registers 11

    const/4 p1, 0x1

    .line 159
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 160
    invoke-virtual {p9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b0134

    const/4 p8, 0x0

    invoke-virtual {p1, p2, p8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    const p2, 0x7f090181

    .line 162
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 163
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 p4, 0x80000

    or-int/2addr p4, p7

    .line 164
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setInputType(I)V

    .line 165
    invoke-virtual {p2, p5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900a6

    .line 168
    invoke-virtual {p1, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 169
    invoke-virtual {p3, p6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    if-eqz p10, :cond_40

    const/4 p4, 0x0

    .line 172
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setEnabled(Z)V

    const/4 p2, 0x4

    .line 173
    invoke-virtual {p3, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    :cond_40
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {p9, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addTowToToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Activity;Landroid/widget/Spinner;Ljava/lang/String;ILandroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)Landroid/widget/Spinner;
    .registers 31

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    .line 184
    invoke-static/range {v0 .. v15}, Lcom/towbook/utils/ViewUtils;->addTowToToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Activity;Landroid/widget/Spinner;Ljava/lang/String;ILandroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;Z)Landroid/widget/Spinner;

    move-result-object v0

    return-object v0
.end method

.method public static addTowToToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Activity;Landroid/widget/Spinner;Ljava/lang/String;ILandroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;Z)Landroid/widget/Spinner;
    .registers 16

    const/4 p1, 0x1

    .line 191
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 192
    invoke-virtual {p7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b012a

    const/4 p8, 0x0

    invoke-virtual {p1, p2, p8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    const p2, 0x7f090181

    .line 194
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 195
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 p4, 0x80000

    or-int/2addr p4, p6

    .line 196
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setInputType(I)V

    .line 197
    invoke-virtual {p2, p5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p3, 0x7f0903ee

    .line 200
    invoke-virtual {p1, p3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    .line 201
    invoke-virtual {p3, p9}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p3, p10}, Landroid/widget/Spinner;->setSelection(I)V

    const p4, 0x7f0900a5

    .line 204
    invoke-virtual {p1, p4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Button;

    .line 205
    invoke-virtual {p4, p14}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const p5, 0x7f0903e3

    .line 207
    invoke-virtual {p1, p5}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/Spinner;

    .line 208
    invoke-virtual {p5, p12}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p5, p13}, Landroid/widget/Spinner;->setSelection(I)V

    if-eqz p15, :cond_64

    const/4 p6, 0x0

    .line 212
    invoke-virtual {p2, p6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 213
    invoke-virtual {p5, p6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 214
    invoke-virtual {p3, p6}, Landroid/widget/Spinner;->setEnabled(Z)V

    const/4 p2, 0x4

    .line 215
    invoke-virtual {p4, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    :cond_64
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-virtual {p7, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object p3
.end method

.method public static addTwoColumsEditText(Landroid/widget/TableLayout;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZLjava/lang/String;)V
    .registers 13

    const/4 p1, 0x1

    .line 723
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 724
    invoke-virtual {p10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p6

    const p11, 0x7f0b012e

    const/4 p12, 0x0

    invoke-virtual {p6, p11, p12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TableRow;

    const p11, 0x7f090555

    .line 726
    invoke-virtual {p6, p11}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p11

    check-cast p11, Landroid/widget/TextView;

    .line 727
    invoke-virtual {p11, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0901a4

    .line 729
    invoke-virtual {p6, p2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 730
    invoke-virtual {p2, p5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/16 p5, 0x1000

    .line 731
    invoke-virtual {p2, p5}, Landroid/widget/EditText;->setInputType(I)V

    .line 732
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 733
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p2, 0x7f0901a5

    .line 735
    invoke-virtual {p6, p2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 736
    invoke-virtual {p2, p9}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 737
    invoke-virtual {p2, p7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x81000

    .line 738
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 739
    invoke-virtual {p2, p8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 741
    new-array p1, p1, [Landroid/text/InputFilter;

    .line 742
    new-instance p3, Landroid/text/InputFilter$LengthFilter;

    const/16 p4, 0x64

    invoke-direct {p3, p4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p4, 0x0

    aput-object p3, p1, p4

    .line 743
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 745
    invoke-virtual {p0, p6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 746
    invoke-virtual {p10, p6}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addViewToTable(Landroid/widget/TableLayout;ILandroid/app/Activity;)V
    .registers 5

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 145
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {p2, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public static addYesNoSpinnerToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Landroid/app/Activity;)Landroid/widget/TableRow;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 570
    invoke-static/range {v0 .. v5}, Lcom/towbook/utils/ViewUtils;->addYesNoSpinnerToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Landroid/app/Activity;Z)Landroid/widget/TableRow;

    move-result-object p0

    return-object p0
.end method

.method public static addYesNoSpinnerToTable(Landroid/widget/TableLayout;Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Landroid/app/Activity;Z)Landroid/widget/TableRow;
    .registers 9

    const/4 p2, 0x1

    .line 575
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 576
    invoke-virtual {p4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0130

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    const v0, 0x7f090555

    .line 577
    invoke-virtual {p2, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 578
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 579
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v0, 0x7f0903ef

    .line 581
    invoke-virtual {p2, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 582
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 584
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Not Selected"

    .line 585
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "No"

    .line 586
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Yes"

    .line 587
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0b003e

    invoke-direct {v1, p4, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p3, 0x7f0b003d

    .line 592
    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 594
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-eqz p5, :cond_58

    .line 597
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 600
    :cond_58
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 601
    invoke-virtual {p4, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-object p2
.end method

.method public static attemptToEmailCall(Landroid/app/Activity;Ljava/lang/String;Lcom/towbook/api/Call;)V
    .registers 5

    .line 971
    invoke-static {p1}, Lcom/towbook/utils/AppUtils;->isEmailValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 972
    new-instance v0, Lcom/towbook/utils/ViewUtils$3;

    invoke-direct {v0, p1, p0, p2}, Lcom/towbook/utils/ViewUtils$3;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/towbook/api/Call;)V

    .line 996
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->getAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 997
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Email receipt to:\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Yes"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "No"

    .line 998
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_43

    :cond_39
    const-string p1, "Contact does not have a valid email"

    const/4 p2, 0x1

    .line 1000
    invoke-static {p0, p1, p2}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object p0

    .line 1001
    invoke-virtual {p0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    :goto_43
    return-void
.end method

.method public static checkCreateAndFillEtaTag(Lcom/towbook/api/Call;Landroid/app/Activity;)Landroid/widget/TableRow;
    .registers 13

    .line 1210
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getArrivalETA()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lcom/towbook/api/Call;->getArrivalETA()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/Status;->getId()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_a9

    .line 1211
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b0111

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    const v1, 0x7f09050b

    .line 1213
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 1215
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getArrivalETA()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_a3

    invoke-virtual {p0}, Lcom/towbook/api/Call;->getArrivalETA()Ljava/util/Date;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-virtual {p0}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/api/Status;->getId()I

    move-result v1

    if-ge v1, v2, :cond_a3

    .line 1216
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/towbook/api/Call;->getArrivalETA()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v1

    const-wide/16 v3, 0x6

    cmp-long v5, v1, v3

    if-gez v5, :cond_95

    const/4 v1, 0x0

    .line 1218
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1219
    new-instance v1, Lcom/towbook/utils/ViewUtils$4;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/towbook/api/Call;->getArrivalETA()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    add-long v7, v3, v5

    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    move-object v3, v1

    move-object v8, p0

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/towbook/utils/ViewUtils$4;-><init>(JJLcom/towbook/api/Call;Landroid/widget/TextView;Landroid/app/Activity;)V

    .line 1241
    invoke-virtual {v1}, Lcom/towbook/utils/ViewUtils$4;->start()Landroid/os/CountDownTimer;

    goto :goto_a8

    .line 1243
    :cond_95
    sget-object p1, Lcom/towbook/utils/ViewUtils;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/towbook/api/Call;->getArrivalETA()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a8

    :cond_a3
    const/16 p0, 0x8

    .line 1246
    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a8
    return-object v0

    :cond_a9
    return-object v1
.end method

.method public static checkCreateAndFillLateTag(Lcom/towbook/api/Call;Landroid/app/Activity;)Landroid/widget/TableRow;
    .registers 3

    .line 1195
    invoke-virtual {p0}, Lcom/towbook/api/Call;->isLate()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 1197
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0b0111

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TableRow;

    const p1, 0x7f09050b

    .line 1199
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "Call is late!"

    .line 1200
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1201
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-object p0

    :cond_27
    return-object v0
.end method

.method public static checkExtension(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    .line 1930
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_72

    .line 1936
    :try_start_11
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_72

    const-string p1, "_display_name"

    .line 1941
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 1942
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1943
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Towbook-ViewUtils]"

    .line 1944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "_size"

    .line 1946
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1957
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_54

    .line 1961
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_56

    :cond_54
    const-string p1, "Unknown"

    :goto_56
    const-string v1, "[Towbook-ViewUtils]"

    .line 1965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_11 .. :try_end_6c} :catchall_6d

    goto :goto_72

    :catchall_6d
    move-exception p1

    .line 1968
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_72
    :goto_72
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static checkOneItem(Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Activity;Ljava/lang/StringBuilder;)Z
    .registers 4

    const-string p2, ""

    .line 756
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "\n"

    .line 758
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static countWords(Ljava/lang/String;)I
    .registers 8

    .line 1326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1328
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_3f

    .line 1330
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    if-eq v3, v0, :cond_1e

    const/4 v5, 0x1

    goto :goto_3c

    .line 1334
    :cond_1e
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_2e

    if-eqz v5, :cond_2e

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_3c

    .line 1339
    :cond_2e
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_3c

    if-ne v3, v0, :cond_3c

    add-int/lit8 v4, v4, 0x1

    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_3f
    return v4
.end method

.method public static createAndFillCallStatus(Lcom/towbook/api/Call;Landroid/app/Activity;)Landroid/widget/TableRow;
    .registers 9

    .line 1006
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0110

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    const v1, 0x7f090174

    .line 1007
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090175

    .line 1008
    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/towbook/mobile/classes/RoundedImageView;

    const v3, 0x7f0900c4

    .line 1012
    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1014
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->findCallStatusColor(Lcom/towbook/api/Call;)Ljava/lang/String;

    move-result-object v4

    .line 1015
    invoke-static {v4}, Lcom/towbook/utils/AppUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a9

    .line 1016
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 1019
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/towbook/api/Status;->getId()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_47

    .line 1020
    invoke-static {v4}, Lcom/towbook/utils/ViewUtils;->getDarkerShade(I)I

    move-result v5

    goto :goto_4b

    .line 1022
    :cond_47
    invoke-static {v4}, Lcom/towbook/utils/ViewUtils;->getLighterShade(I)I

    move-result v5

    .line 1024
    :goto_4b
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v6, -0x1

    .line 1025
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 1027
    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 1030
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->hasDriver(Lcom/towbook/api/Call;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v6, 0x0

    if-eqz v3, :cond_70

    .line 1031
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->getCallAbbreviatedDriver(Lcom/towbook/api/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/towbook/utils/ViewUtils;->getUserImageText(Ljava/lang/String;I)Lcom/towbook/mobile/classes/TextDrawable;

    move-result-object p1

    .line 1033
    invoke-virtual {v2, v4}, Lcom/towbook/mobile/classes/RoundedImageView;->setVisibility(I)V

    .line 1034
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1035
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_84

    .line 1037
    :cond_70
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0800ad

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1039
    invoke-virtual {v2, v6}, Lcom/towbook/mobile/classes/RoundedImageView;->setVisibility(I)V

    .line 1040
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1042
    invoke-virtual {v2, p1}, Lcom/towbook/mobile/classes/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_84
    const p1, 0x7f090507

    .line 1047
    invoke-virtual {v0, p1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1049
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/api/Status;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 1050
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object p0

    invoke-virtual {p0}, Lcom/towbook/api/Status;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    :cond_a6
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_a9
    return-object v0
.end method

.method public static createAndFillStickerStatus(Lcom/towbook/api/stickering/StickerStatus;Landroid/app/Activity;)Landroid/widget/TableRow;
    .registers 10

    .line 1059
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0110

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    const v1, 0x7f090174

    .line 1060
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090175

    .line 1061
    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/towbook/mobile/classes/RoundedImageView;

    const v3, 0x7f0900c4

    .line 1065
    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/16 v4, 0x8

    .line 1066
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1068
    invoke-virtual {p0}, Lcom/towbook/api/stickering/StickerStatus;->getHtmlColor()Ljava/lang/String;

    move-result-object v5

    .line 1069
    invoke-static {v5}, Lcom/towbook/utils/AppUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_88

    .line 1070
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 1073
    invoke-virtual {p0}, Lcom/towbook/api/stickering/StickerStatus;->getId()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_48

    .line 1074
    invoke-static {v5}, Lcom/towbook/utils/ViewUtils;->getDarkerShade(I)I

    move-result v6

    goto :goto_4c

    .line 1076
    :cond_48
    invoke-static {v5}, Lcom/towbook/utils/ViewUtils;->getLighterShade(I)I

    move-result v6

    .line 1078
    :goto_4c
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v6, -0x1

    .line 1079
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 1081
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 1083
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0800ad

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v3, 0x0

    .line 1085
    invoke-virtual {v2, v3}, Lcom/towbook/mobile/classes/RoundedImageView;->setVisibility(I)V

    .line 1086
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1088
    invoke-virtual {v2, p1}, Lcom/towbook/mobile/classes/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090507

    .line 1091
    invoke-virtual {v0, p1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1093
    invoke-virtual {p0}, Lcom/towbook/api/stickering/StickerStatus;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 1094
    invoke-virtual {p0}, Lcom/towbook/api/stickering/StickerStatus;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    :cond_85
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_88
    return-object v0
.end method

.method public static createArrayAdapter(Landroid/app/Activity;Ljava/util/List;)Landroid/widget/ArrayAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "TT;>;)",
            "Landroid/widget/ArrayAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1857
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0b003e

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p0, 0x7f0b003d

    .line 1858
    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method public static createCustomTabItemLayout(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .registers 5

    const v0, 0x7f0b005b

    const/4 v1, 0x0

    .line 1716
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const v0, 0x7f090141

    .line 1717
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090140

    .line 1718
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1720
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public static createFileFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1892
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 1893
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 1894
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1895
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1896
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x800

    .line 1898
    new-array v1, v1, [B

    .line 1900
    :goto_26
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_31

    const/4 v3, 0x0

    .line 1901
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_26

    .line 1904
    :cond_31
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1905
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1906
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3a} :catch_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_44

    :catch_3b
    move-exception p0

    .line 1913
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    :catch_40
    move-exception p0

    .line 1910
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_44
    const-string p0, "[Towbook-ViewUtils]"

    const-string p1, "Picasa Done"

    .line 1916
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public static displayDatePicker(Landroid/support/v7/app/AppCompatActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 8

    .line 1864
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1865
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1869
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1871
    :try_start_1a
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d/yyyy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v1

    .line 1873
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1877
    :cond_37
    :goto_37
    new-instance v1, Lcom/towbook/utils/ViewUtils$6;

    invoke-direct {v1, p1}, Lcom/towbook/utils/ViewUtils$6;-><init>(Landroid/widget/EditText;)V

    const/4 p1, 0x1

    .line 1882
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1877
    invoke-static {v1, v2, v3, v0, p1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object p1

    .line 1885
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static findCallStatusColor(Lcom/towbook/api/Call;)Ljava/lang/String;
    .registers 3

    const-string v0, "#222222"

    .line 1105
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v0

    .line 1109
    :cond_9
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object p0

    invoke-virtual {p0}, Lcom/towbook/api/Status;->getId()I

    move-result p0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_31

    const/16 v1, 0xff

    if-eq p0, v1, :cond_2e

    packed-switch p0, :pswitch_data_34

    goto :goto_33

    :pswitch_1c
    const-string v0, "#222222"

    goto :goto_33

    :pswitch_1f
    const-string v0, "#3294F5"

    goto :goto_33

    :pswitch_22
    const-string v0, "#008000"

    goto :goto_33

    :pswitch_25
    const-string v0, "#90EE90"

    goto :goto_33

    :pswitch_28
    const-string v0, "#39579A"

    goto :goto_33

    :pswitch_2b
    const-string v0, "#FFA500"

    goto :goto_33

    :cond_2e
    const-string v0, "#708090"

    goto :goto_33

    :cond_31
    const-string v0, "#d700c9"

    :goto_33
    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static formatDate(III)Ljava/lang/String;
    .registers 4

    const-string v0, "M/d/yy h:mm aaa"

    .line 1798
    invoke-static {p0, p1, p2, v0}, Lcom/towbook/utils/ViewUtils;->formatDate(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(IIILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1804
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d-%d-%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_33

    .line 1806
    :catch_2e
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 1809
    :goto_33
    invoke-static {p0, p3}, Lcom/towbook/utils/ViewUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "M/d/yy h:mm aaa"

    .line 1776
    invoke-static {p0, v0}, Lcom/towbook/utils/ViewUtils;->formatDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1780
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1784
    :try_start_9
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_e

    goto :goto_1b

    .line 1787
    :catch_e
    :try_start_e
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1788
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_20

    .line 1794
    :goto_1b
    invoke-static {v0, p1}, Lcom/towbook/utils/ViewUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_20
    return-object p0
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    const-string v0, "M/d/yy h:mm aaa"

    .line 1767
    invoke-static {p0, v0}, Lcom/towbook/utils/ViewUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1771
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1772
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateForTodayOrOther(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_25

    .line 1471
    sget-object v0, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    if-eq p0, v0, :cond_25

    .line 1472
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aaa"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1474
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1477
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1479
    :cond_1e
    sget-object v0, Lcom/towbook/utils/ViewUtils;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const-string p0, ""

    return-object p0
.end method

.method public static formatDateForTodayOrOtherList(Ljava/util/Date;)Ljava/lang/String;
    .registers 11

    if-eqz p0, :cond_b7

    .line 1487
    sget-object v0, Lcom/towbook/utils/ViewUtils;->clearTime:Ljava/util/Date;

    if-eq p0, v0, :cond_b7

    .line 1488
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1490
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mm aaa"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1492
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1495
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1498
    :cond_1e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 1500
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1501
    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    cmp-long v6, v0, v3

    if-gtz v6, :cond_b5

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gtz v8, :cond_3d

    goto/16 :goto_b5

    :cond_3d
    const-string v6, ""

    const/4 v7, 0x7

    .line 1508
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4a

    const-string v6, "Monday"

    goto :goto_84

    .line 1510
    :cond_4a
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_54

    const-string v6, "Tuesday"

    goto :goto_84

    .line 1512
    :cond_54
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5e

    const-string v6, "Wednesday"

    goto :goto_84

    .line 1514
    :cond_5e
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_68

    const-string v6, "Thursday"

    goto :goto_84

    .line 1516
    :cond_68
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_72

    const-string v6, "Friday"

    goto :goto_84

    .line 1518
    :cond_72
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v8, v7, :cond_7b

    const-string v6, "Saturday"

    goto :goto_84

    .line 1520
    :cond_7b
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_84

    const-string v6, "Sunday"

    :cond_84
    :goto_84
    const/4 v7, 0x0

    sub-long v7, v3, v0

    const-wide/32 v0, 0x5265c00

    .line 1525
    div-long/2addr v7, v0

    const-wide/16 v0, 0x7

    cmp-long v3, v7, v0

    if-gez v3, :cond_ae

    .line 1526
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1528
    :cond_ae
    sget-object v0, Lcom/towbook/utils/ViewUtils;->dateFormatLater:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b5
    :goto_b5
    const/4 p0, 0x0

    return-object p0

    :cond_b7
    const-string p0, ""

    return-object p0
.end method

.method public static getAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 4

    .line 1688
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f100224

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 1691
    :cond_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f100008

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getCallAbbreviatedDriver(Lcom/towbook/api/Call;)Ljava/lang/String;
    .registers 4

    .line 1175
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_75

    .line 1176
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 1177
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    invoke-virtual {v0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_75

    .line 1178
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    invoke-virtual {v0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 1179
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    invoke-virtual {v0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/AssetDriverTruck;

    invoke-virtual {v0}, Lcom/towbook/api/AssetDriverTruck;->getDriver()Lcom/towbook/api/Driver;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 1180
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/towbook/api/Asset;

    invoke-virtual {p0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/towbook/api/AssetDriverTruck;

    invoke-virtual {p0}, Lcom/towbook/api/AssetDriverTruck;->getDriver()Lcom/towbook/api/Driver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/towbook/api/Driver;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_75
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCallRemovalDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 4

    .line 1696
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->getAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1697
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f0023

    .line 1698
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    .line 1699
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1700
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static getDarkerShade(I)I
    .registers 4

    .line 895
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 896
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 897
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v1

    float-to-int p0, p0

    .line 895
    invoke-static {v0, v2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private static getLighterShade(I)I
    .registers 1

    const/16 p0, 0x52

    .line 903
    invoke-static {p0, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static getPaymentIconResourceFromName(Ljava/lang/String;)I
    .registers 3

    .line 1814
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_a8

    goto/16 :goto_7b

    :sswitch_15
    const-string v0, "american_express"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/4 p0, 0x5

    goto :goto_7c

    :sswitch_1f
    const-string v0, "discover"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/4 p0, 0x4

    goto :goto_7c

    :sswitch_29
    const-string v0, "debit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/4 p0, 0x6

    goto :goto_7c

    :sswitch_33
    const-string v0, "check"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/4 p0, 0x1

    goto :goto_7c

    :sswitch_3d
    const-string v0, "visa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/4 p0, 0x2

    goto :goto_7c

    :sswitch_47
    const-string v0, "cash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/4 p0, 0x0

    goto :goto_7c

    :sswitch_51
    const-string v0, "square"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/16 p0, 0x9

    goto :goto_7c

    :sswitch_5c
    const-string v0, "paypal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/16 p0, 0x8

    goto :goto_7c

    :sswitch_67
    const-string v0, "credit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/4 p0, 0x7

    goto :goto_7c

    :sswitch_71
    const-string v0, "mastercard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const/4 p0, 0x3

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 p0, -0x1

    :goto_7c
    packed-switch p0, :pswitch_data_d2

    const p0, 0x7f0801ca

    return p0

    :pswitch_83
    const p0, 0x7f08022d

    return p0

    :pswitch_87
    const p0, 0x7f0801d7

    return p0

    :pswitch_8b
    const p0, 0x7f0800ac

    return p0

    :pswitch_8f
    const p0, 0x7f080063

    return p0

    :pswitch_93
    const p0, 0x7f0800b8

    return p0

    :pswitch_97
    const p0, 0x7f0801c4

    return p0

    :pswitch_9b
    const p0, 0x7f080264

    return p0

    :pswitch_9f
    const p0, 0x7f08008c

    return p0

    :pswitch_a3
    const p0, 0x7f080089

    return p0

    nop

    :sswitch_data_a8
    .sparse-switch
        -0x79845b8e -> :sswitch_71
        -0x509a5507 -> :sswitch_67
        -0x3b51a10d -> :sswitch_5c
        -0x3553a6e3 -> :sswitch_51
        0x2e7b33 -> :sswitch_47
        0x373c41 -> :sswitch_3d
        0x5a3e508 -> :sswitch_33
        0x5b094ec -> :sswitch_29
        0x104877e9 -> :sswitch_1f
        0x4d9e7a51 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_8b
        :pswitch_87
        :pswitch_83
    .end packed-switch
.end method

.method public static getResourceColor(Landroid/content/Context;I)I
    .registers 4

    .line 1753
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1754
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    .line 1755
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1757
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static getSelectSpinner(Landroid/widget/Spinner;)Ljava/lang/String;
    .registers 2

    .line 768
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/towbook/mobile/classes/ItemSpinner;

    invoke-virtual {p0}, Lcom/towbook/mobile/classes/ItemSpinner;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Not Selected"

    .line 769
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, ""

    return-object p0

    :cond_15
    return-object p0
.end method

.method public static getStatusHexColorById(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_22

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1f

    packed-switch p0, :pswitch_data_26

    const-string p0, "#222222"

    goto :goto_24

    :pswitch_d
    const-string p0, "#222222"

    goto :goto_24

    :pswitch_10
    const-string p0, "#3294F5"

    goto :goto_24

    :pswitch_13
    const-string p0, "#008000"

    goto :goto_24

    :pswitch_16
    const-string p0, "#90EE90"

    goto :goto_24

    :pswitch_19
    const-string p0, "#39579A"

    goto :goto_24

    :pswitch_1c
    const-string p0, "#FFA500"

    goto :goto_24

    :cond_1f
    const-string p0, "#708090"

    goto :goto_24

    :cond_22
    const-string p0, "#d700c9"

    :goto_24
    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static getText(Landroid/widget/TextView;)Ljava/lang/String;
    .registers 1

    .line 1727
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeLabel(I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0x3c

    const/4 v2, 0x1

    if-ge p0, v1, :cond_17

    .line 1841
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d mins"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1843
    :cond_17
    div-int/lit8 v3, p0, 0x3c

    .line 1844
    rem-int/2addr p0, v1

    const/4 v1, 0x2

    if-lez p0, :cond_43

    .line 1847
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d %s, %d %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    if-le v3, v2, :cond_2f

    const-string v0, "hrs"

    goto :goto_31

    :cond_2f
    const-string v0, "hr"

    :goto_31
    aput-object v0, v6, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    const/4 p0, 0x3

    const-string v0, "mins"

    aput-object v0, v6, p0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1849
    :cond_43
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    if-le v3, v2, :cond_54

    const-string v0, "hrs"

    goto :goto_56

    :cond_54
    const-string v0, "hr"

    :goto_56
    aput-object v0, v1, v2

    invoke-static {p0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserImageText(Ljava/lang/String;)Lcom/towbook/mobile/classes/TextDrawable;
    .registers 2

    .line 1255
    invoke-static {}, Lcom/towbook/mobile/TowbookApplication;->getRandomColor()I

    move-result v0

    .line 1256
    invoke-static {p0, v0}, Lcom/towbook/utils/ViewUtils;->getUserImageText(Ljava/lang/String;I)Lcom/towbook/mobile/classes/TextDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static getUserImageText(Ljava/lang/String;I)Lcom/towbook/mobile/classes/TextDrawable;
    .registers 11

    .line 1260
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->countWords(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_8a

    const-string v0, " "

    .line 1264
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->removeAllBlanksAndSuffix([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1268
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [C

    .line 1271
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v5, 0x0

    :cond_25
    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_25

    .line 1272
    array-length v7, v0

    if-ge v5, v7, :cond_25

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 1273
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_47
    const-string p0, ""

    .line 1280
    array-length v5, v0

    const/4 v6, 0x0

    :goto_4b
    if-ge v3, v5, :cond_6d

    aget-char v7, v0, v3

    const/16 v8, 0x20

    if-eq v7, v8, :cond_68

    if-eqz v6, :cond_59

    .line 1282
    array-length v8, v0

    sub-int/2addr v8, v4

    if-ne v6, v8, :cond_68

    .line 1283
    :cond_59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_68
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 1288
    :cond_6d
    invoke-static {}, Lcom/towbook/mobile/classes/TextDrawable;->builder()Lcom/towbook/mobile/classes/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/towbook/mobile/classes/TextDrawable$IShapeBuilder;->beginConfig()Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;->withBorder(I)Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;->width(I)Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;->height(I)Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;->endConfig()Lcom/towbook/mobile/classes/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/towbook/mobile/classes/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/towbook/mobile/classes/TextDrawable;

    move-result-object p0

    goto :goto_bb

    .line 1290
    :cond_8a
    invoke-static {}, Lcom/towbook/mobile/classes/TextDrawable;->builder()Lcom/towbook/mobile/classes/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/towbook/mobile/classes/TextDrawable$IShapeBuilder;->beginConfig()Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;->withBorder(I)Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;->width(I)Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;->height(I)Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/towbook/mobile/classes/TextDrawable$IConfigBuilder;->endConfig()Lcom/towbook/mobile/classes/TextDrawable$IShapeBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/towbook/mobile/classes/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/towbook/mobile/classes/TextDrawable;

    move-result-object p0

    :goto_bb
    return-object p0
.end method

.method public static getVisibility(Ljava/lang/String;)I
    .registers 1

    .line 1853
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x8

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static handleXmasLogo(Landroid/widget/ImageView;)V
    .registers 3

    if-eqz p0, :cond_15

    .line 1975
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 1976
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    const/4 v0, 0x4

    :goto_12
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method private static hasDriver(Lcom/towbook/api/Call;)Z
    .registers 4

    .line 1185
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_59

    .line 1186
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1187
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    invoke-virtual {v0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_59

    .line 1188
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    invoke-virtual {v0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1189
    invoke-virtual {p0}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/towbook/api/Asset;

    invoke-virtual {p0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/towbook/api/AssetDriverTruck;

    invoke-virtual {p0}, Lcom/towbook/api/AssetDriverTruck;->getDriver()Lcom/towbook/api/Driver;

    move-result-object p0

    if-eqz p0, :cond_59

    return v1

    :cond_59
    return v2
.end method

.method public static hideThinBox(ZLandroid/widget/TableLayout;)V
    .registers 2

    if-nez p0, :cond_7

    const/4 p0, 0x4

    .line 830
    invoke-virtual {p1, p0}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_b

    :cond_7
    const/4 p0, 0x0

    .line 832
    invoke-virtual {p1, p0}, Landroid/widget/TableLayout;->setVisibility(I)V

    :goto_b
    return-void
.end method

.method public static hideView(Landroid/view/View;Z)V
    .registers 3

    if-eqz p0, :cond_18

    if-eqz p1, :cond_c

    const/16 p1, 0x8

    .line 1707
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    :catch_a
    move-exception p0

    goto :goto_11

    :cond_c
    const/4 p1, 0x0

    .line 1708
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_a

    goto :goto_18

    :goto_11
    const-string p1, "[Towbook-ViewUtils]"

    const-string v0, "Exception"

    .line 1711
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_18
    return-void
.end method

.method public static lockCostInvoiceItem(Landroid/widget/EditText;Lcom/towbook/api/InvoiceItem;)V
    .registers 2

    .line 1419
    invoke-virtual {p1}, Lcom/towbook/api/InvoiceItem;->isLockCost()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    .line 1420
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    .line 1422
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_f
    return-void
.end method

.method public static lockCostRateItem(Landroid/widget/EditText;Lcom/towbook/api/RateItem;)V
    .registers 2

    .line 1434
    invoke-virtual {p1}, Lcom/towbook/api/RateItem;->isLockCost()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    .line 1435
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    .line 1438
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_f
    return-void
.end method

.method public static newSpinners()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 789
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Not Selected"

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static notSuffix(Ljava/lang/String;)Z
    .registers 5

    .line 1307
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1308
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x69

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_56

    const/16 v1, 0x76

    if-eq v0, v1, :cond_4c

    const/16 v1, 0xd20

    if-eq v0, v1, :cond_42

    const/16 v1, 0xd2d

    if-eq v0, v1, :cond_38

    const/16 v1, 0xd48

    if-eq v0, v1, :cond_2e

    const v1, 0x19749

    if-eq v0, v1, :cond_24

    goto :goto_60

    :cond_24
    const-string v0, "iii"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    const/4 p0, 0x3

    goto :goto_61

    :cond_2e
    const-string v0, "jr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    const/4 p0, 0x0

    goto :goto_61

    :cond_38
    const-string v0, "iv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    const/4 p0, 0x4

    goto :goto_61

    :cond_42
    const-string v0, "ii"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    const/4 p0, 0x2

    goto :goto_61

    :cond_4c
    const-string v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    const/4 p0, 0x5

    goto :goto_61

    :cond_56
    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    const/4 p0, 0x1

    goto :goto_61

    :cond_60
    :goto_60
    const/4 p0, -0x1

    :goto_61
    packed-switch p0, :pswitch_data_66

    return v2

    :pswitch_65
    return v3

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
    .end packed-switch
.end method

.method private static removeAllBlanksAndSuffix([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1298
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 1299
    aget-object v2, p0, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/towbook/utils/ViewUtils;->notSuffix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1300
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    return-object v0
.end method

.method public static removeShiftMode(Landroid/support/design/widget/BottomNavigationView;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1732
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/support/design/internal/BottomNavigationMenuView;

    .line 1734
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mShiftingMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 1735
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1736
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1737
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 1738
    :goto_1c
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 1739
    invoke-virtual {p0, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/internal/BottomNavigationItemView;

    .line 1740
    invoke-virtual {v2, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setShiftingMode(Z)V

    .line 1742
    invoke-virtual {v2}, Landroid/support/design/internal/BottomNavigationItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V
    :try_end_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_36} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_36} :catch_39

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :catch_39
    const-string p0, "ERROR ILLEGAL ALG"

    const-string v0, "Unable to change value of shift mode"

    .line 1748
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :catch_41
    const-string p0, "ERROR NO SUCH FIELD"

    const-string v0, "Unable to get shift mode field"

    .line 1746
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    return-void
.end method

.method public static setAdapterAssetSpinner(Landroid/widget/Spinner;ILjava/util/List;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "I",
            "Ljava/util/List<",
            "Lcom/towbook/api/Asset;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 797
    new-instance p2, Lcom/towbook/api/Asset;

    const-string v1, "Add charge to invoice"

    const/4 v2, 0x0

    invoke-direct {p2, v2, v1}, Lcom/towbook/api/Asset;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 799
    new-instance p2, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {p2, p4, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p4, 0x1090009

    .line 801
    invoke-virtual {p2, p4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 803
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-eqz p3, :cond_26

    .line 805
    invoke-virtual {p0, p3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 806
    :cond_26
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public static setAdapterChargeSpinner(Landroid/widget/Spinner;ILjava/util/List;Ljava/lang/String;Landroid/app/Activity;Z)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "I",
            "Ljava/util/List<",
            "Lcom/towbook/api/RateItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 811
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 814
    new-instance v13, Lcom/towbook/api/RateItem;

    const-string v5, "Choose an item to add"

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/towbook/api/RateItem;-><init>(ILjava/lang/String;DLcom/towbook/api/Predefined;ZLjava/util/List;D)V

    const/4 v3, 0x0

    invoke-interface {v2, v3, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 815
    new-instance v3, Lcom/towbook/api/RateItem;

    const-string v16, "Add a custom charge"

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move-object v14, v3

    invoke-direct/range {v14 .. v23}, Lcom/towbook/api/RateItem;-><init>(ILjava/lang/String;DLcom/towbook/api/Predefined;ZLjava/util/List;D)V

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 818
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    move-object/from16 v5, p4

    invoke-direct {v3, v5, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 820
    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 822
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-eqz v1, :cond_4e

    .line 824
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 825
    :cond_4e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public static setAdapterForSpinner(Landroid/widget/Spinner;Ljava/util/List;Landroid/app/Activity;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/Spinner;",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 513
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p2, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p1, 0x1090009

    .line 516
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 517
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public static setAdapterSpinner(Landroid/widget/Spinner;ILjava/util/List;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/Spinner;",
            "I",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 778
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p4, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p2, 0x1090009

    .line 780
    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 781
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-eqz p3, :cond_16

    .line 783
    invoke-virtual {p0, p3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 784
    :cond_16
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public static setColorForSpinner(Landroid/widget/Spinner;Landroid/content/Context;)V
    .registers 3

    .line 1443
    new-instance v0, Lcom/towbook/utils/ViewUtils$5;

    invoke-direct {v0, p1}, Lcom/towbook/utils/ViewUtils$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public static setHiddenCharges(Landroid/widget/TableLayout;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;)V"
        }
    .end annotation

    .line 846
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/InvoiceItem;

    .line 847
    invoke-virtual {v1}, Lcom/towbook/api/InvoiceItem;->getItemTotal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    .line 850
    :cond_1d
    invoke-static {v0, p0}, Lcom/towbook/utils/ViewUtils;->hideThinBox(ZLandroid/widget/TableLayout;)V

    return-void
.end method

.method public static setHiddenContact(Landroid/widget/TableLayout;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Lcom/towbook/api/Contact;",
            ">;)V"
        }
    .end annotation

    .line 837
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Contact;

    .line 838
    invoke-virtual {v1}, Lcom/towbook/api/Contact;->getContactString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    .line 841
    :cond_1f
    invoke-static {v0, p0}, Lcom/towbook/utils/ViewUtils;->hideThinBox(ZLandroid/widget/TableLayout;)V

    return-void
.end method

.method public static textViewAsLink(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 5

    .line 1761
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1762
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1763
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static updateAndFillCallStatus(Lcom/towbook/api/Call;Lcom/towbook/mobile/CallViewActivity;)Landroid/widget/TableRow;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static updateCreateAndFillLateTag(Lcom/towbook/api/Call;Lcom/towbook/mobile/CallViewActivity;)Landroid/widget/TableRow;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method
