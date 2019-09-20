.class public Lcom/towbook/utils/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation

.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final DAY_MILLIS:I = 0x5265c00

.field private static final HOUR_MILLIS:I = 0x36ee80

.field private static final MINUTE_MILLIS:I = 0xea60

.field private static final SECOND_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "[Towbook-AppUtils]"

.field private static gitRepositoryState:Lcom/towbook/mobile/classes/GitRepositoryState;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAccountNameForAccountID(ILandroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {p1}, Lcom/towbook/mobile/TowbookApplication;->getConfig()Lcom/towbook/api/ConfigSettings;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Lcom/towbook/api/ConfigSettings;->getAccountsWithBlank()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 510
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 511
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/Account;

    .line 512
    invoke-virtual {v2}, Lcom/towbook/api/Account;->getId()I

    move-result v3

    if-ne v3, p0, :cond_28

    .line 514
    invoke-virtual {v2}, Lcom/towbook/api/Account;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public static GetAccountNameForAccountID(ILcom/towbook/api/ConfigSettings;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-eqz p1, :cond_23

    .line 526
    invoke-virtual {p1}, Lcom/towbook/api/ConfigSettings;->getAccountsWithBlank()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 527
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 528
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/Account;

    .line 529
    invoke-virtual {v2}, Lcom/towbook/api/Account;->getId()I

    move-result v3

    if-ne v3, p0, :cond_20

    .line 531
    invoke-virtual {v2}, Lcom/towbook/api/Account;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_23
    :goto_23
    return-object v0
.end method

.method public static IsNullOrEmpty(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    return v0
.end method

.method public static RotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 9

    .line 1197
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1198
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1201
    :try_start_a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_18} :catch_19

    return-object p1

    .line 1203
    :catch_19
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1204
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 1205
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1206
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1207
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/towbook/utils/AppUtils;->calculateInSampleSizeAutofit(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    .line 1208
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1210
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static addItemModel(Landroid/widget/Spinner;Ljava/lang/String;)V
    .registers 5

    .line 1637
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/classes/ItemSpinner;

    .line 1638
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemSpinner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1640
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1641
    new-instance v2, Lcom/towbook/mobile/classes/ItemSpinner;

    invoke-direct {v2, v1, p1}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1642
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_3a
    return-void
.end method

.method public static addItemToMake(ZLjava/lang/String;Landroid/content/DialogInterface;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .registers 5

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move-object p3, p4

    .line 1631
    :goto_4
    invoke-static {p3, p1}, Lcom/towbook/utils/AppUtils;->getSelectedItemSpinner(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result p0

    .line 1632
    invoke-virtual {p3, p0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1633
    invoke-static {p3, p1}, Lcom/towbook/utils/AppUtils;->addItemModel(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static as(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static autoRotateImage(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    .line 281
    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v1, 0x1

    .line 282
    invoke-virtual {v0, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_20

    const/4 v0, 0x6

    if-ne p1, v0, :cond_13

    const/16 p0, 0x5a

    goto :goto_2a

    :cond_13
    const/4 v0, 0x3

    if-ne p1, v0, :cond_19

    const/16 p0, 0xb4

    goto :goto_2a

    :cond_19
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2a

    const/16 p0, 0x10e

    goto :goto_2a

    :catch_20
    move-exception p1

    const-string v0, "[Towbook-AppUtils]"

    .line 293
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    :goto_2a
    return p0
.end method

.method public static bundleToWorkManagerData(Landroid/os/Bundle;)Landroidx/work/Data;
    .registers 5

    .line 2344
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    if-eqz p0, :cond_29

    .line 2346
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_29

    .line 2347
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2348
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    goto :goto_15

    .line 2351
    :cond_29
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p0

    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 4

    .line 1231
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1232
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_b

    if-le p0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    goto :goto_1c

    :cond_b
    :goto_b
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 1238
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 1239
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_1c

    move p0, p2

    :cond_1c
    :goto_1c
    return p0
.end method

.method public static calculateInSampleSizeAutofit(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    .line 1216
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1217
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_9

    if-le p0, p1, :cond_18

    .line 1220
    :cond_9
    div-int/lit8 v0, v0, 0x2

    .line 1221
    div-int/lit8 p0, p0, 0x2

    .line 1222
    :goto_d
    div-int v2, v0, v1

    if-lt v2, p2, :cond_18

    div-int v2, p0, v1

    if-lt v2, p1, :cond_18

    mul-int/lit8 v1, v1, 0x2

    goto :goto_d

    :cond_18
    return v1
.end method

.method public static checkBasePermissions(Landroid/app/Activity;)Z
    .registers 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2198
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static cleanNumber(Landroid/text/Editable;)Ljava/lang/String;
    .registers 1

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->cleanNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cleanNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, ","

    const-string v1, ""

    .line 197
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static clearAllPrefs(Landroid/content/Context;)V
    .registers 3

    const-string v0, "Towbook"

    const/4 v1, 0x0

    .line 1049
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1050
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1052
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1053
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1055
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    .line 1058
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/towbook/mobile/TowbookApplication;

    const/4 v0, 0x0

    .line 1059
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->setConfig(Lcom/towbook/api/ConfigSettings;)Lcom/towbook/mobile/TowbookApplication;

    .line 1060
    invoke-static {v0}, Lcom/towbook/mobile/TowbookApplication;->setUser(Lcom/towbook/api/CurrentUser;)V

    return-void
.end method

.method public static clearAllPrefsMinusExceptions(Landroid/content/Context;)V
    .registers 10

    const-string v0, "Towbook"

    const/4 v1, 0x0

    .line 1064
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1065
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "setting_noti_repeat"

    const-string v4, "selected_sound"

    const-string v5, "setting_photo_quality"

    .line 1067
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 1069
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1071
    :goto_2f
    array-length v7, v3

    if-ge v5, v7, :cond_44

    .line 1072
    aget-object v7, v3, v5

    .line 1073
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    const/4 v6, 0x1

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_44
    if-eqz v6, :cond_47

    goto :goto_21

    .line 1080
    :cond_47
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_21

    .line 1083
    :cond_51
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    .line 1087
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/towbook/mobile/TowbookApplication;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->setConfig(Lcom/towbook/api/ConfigSettings;)Lcom/towbook/mobile/TowbookApplication;

    invoke-static {v0}, Lcom/towbook/mobile/TowbookApplication;->setUser(Lcom/towbook/api/CurrentUser;)V

    return-void
.end method

.method public static cloneListAssets(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Asset;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/towbook/api/Asset;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 1362
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1363
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1364
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Asset;

    .line 1366
    :try_start_21
    invoke-virtual {v1}, Lcom/towbook/api/Asset;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Asset;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_15

    :catch_2b
    move-exception v1

    const-string v2, "[Towbook-AppUtils]"

    .line 1368
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :cond_36
    return-object v0
.end method

.method public static cloneListContact(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Contact;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/towbook/api/Contact;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 1317
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1318
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1319
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Contact;

    .line 1321
    :try_start_21
    invoke-virtual {v1}, Lcom/towbook/api/Contact;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Contact;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_15

    :catch_2b
    move-exception v1

    const-string v2, "[Towbook-AppUtils]"

    .line 1323
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :cond_36
    return-object v0
.end method

.method public static cloneListInvoiceItem(Ljava/util/List;Lcom/towbook/api/ConfigSettings;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;",
            "Lcom/towbook/api/ConfigSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 1346
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1348
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1349
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/InvoiceItem;

    .line 1351
    :try_start_21
    invoke-virtual {v1}, Lcom/towbook/api/InvoiceItem;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3d

    invoke-virtual {v1}, Lcom/towbook/api/InvoiceItem;->getQuantity()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3d

    invoke-virtual {v1, p1}, Lcom/towbook/api/InvoiceItem;->isStorageRate(Lcom/towbook/api/ConfigSettings;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1352
    :cond_3d
    invoke-virtual {v1}, Lcom/towbook/api/InvoiceItem;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FreeQuantity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1353
    invoke-virtual {v1}, Lcom/towbook/api/InvoiceItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/InvoiceItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_21 .. :try_end_52} :catch_53

    goto :goto_15

    :catch_53
    move-exception v1

    const-string v2, "[Towbook-AppUtils]"

    .line 1355
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :cond_5e
    return-object v0
.end method

.method public static cloneListInvoiceItemEdit(Ljava/util/List;Lcom/towbook/api/ConfigSettings;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;",
            "Lcom/towbook/api/ConfigSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 1330
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1332
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1333
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/InvoiceItem;

    .line 1335
    :try_start_21
    invoke-virtual {v1}, Lcom/towbook/api/InvoiceItem;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3d

    invoke-virtual {v1}, Lcom/towbook/api/InvoiceItem;->getQuantity()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3d

    invoke-virtual {v1, p1}, Lcom/towbook/api/InvoiceItem;->isStorageRate(Lcom/towbook/api/ConfigSettings;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1337
    :cond_3d
    invoke-virtual {v1}, Lcom/towbook/api/InvoiceItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/InvoiceItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_21 .. :try_end_46} :catch_47

    goto :goto_15

    :catch_47
    move-exception v1

    const-string v2, "[Towbook-AppUtils]"

    .line 1339
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :cond_52
    return-object v0
.end method

.method public static composeEmail(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    .line 2280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.extra.SUBJECT"

    const-string v1, "From Towbook"

    .line 2281
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    const-string v1, ""

    .line 2282
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Send Email"

    .line 2284
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static createSnackbar(Landroid/app/Activity;Ljava/lang/String;I)Landroid/support/design/widget/Snackbar;
    .registers 4

    const v0, 0x1020002

    .line 2011
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const p2, 0x7f0600c5

    .line 2012
    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    .line 2014
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p0

    const p2, 0x7f0903cf

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p2, -0x1

    .line 2015
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method public static dateToCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .registers 2

    .line 798
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 799
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public static decodeSampledBitmapFromResource(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public static findIndexOfItemInList(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1744
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 1746
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1748
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1749
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static formatDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1413
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1415
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 1416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1417
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    .line 1418
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/towbook/utils/AppUtils;->getDayNumberSuffix(I)Ljava/lang/String;

    move-result-object v0

    .line 1419
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EEE, MMM d\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', yyyy \'@\' h:mma"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1421
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    move-exception p0

    const-string v0, "[Towbook-AppUtils]"

    .line 1423
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public static formatMoney(D)Ljava/lang/String;
    .registers 4

    .line 1404
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x2

    .line 1405
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1406
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1407
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYearMakeModel(Lcom/towbook/api/Asset;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 1383
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1384
    invoke-virtual {p0}, Lcom/towbook/api/Asset;->getYear()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/towbook/api/Asset;->getYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x76c

    if-le v1, v2, :cond_34

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/api/Asset;->getYear()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    :cond_34
    invoke-virtual {p0}, Lcom/towbook/api/Asset;->getMake()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 1388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/api/Asset;->getMake()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    :cond_56
    invoke-virtual {p0}, Lcom/towbook/api/Asset;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/api/Asset;->getModel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1394
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_87

    return-object p0

    :cond_87
    const-string p0, ""

    return-object p0
.end method

.method public static formatYearMakeModel(Lcom/towbook/api/stickering/Sticker;)Ljava/lang/String;
    .registers 4

    .line 1400
    new-instance v0, Lcom/towbook/api/Asset;

    invoke-virtual {p0}, Lcom/towbook/api/stickering/Sticker;->getModelYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/towbook/api/stickering/Sticker;->getMake()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/towbook/api/stickering/Sticker;->getModel()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/towbook/api/Asset;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/towbook/utils/AppUtils;->formatYearMakeModel(Lcom/towbook/api/Asset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getACallForAdd(Lcom/towbook/api/Account;Landroid/app/Activity;)Lcom/towbook/api/Call;
    .registers 8

    .line 984
    new-instance v0, Lcom/towbook/api/Call;

    invoke-direct {v0}, Lcom/towbook/api/Call;-><init>()V

    .line 985
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 986
    new-instance v2, Lcom/towbook/api/Asset;

    invoke-direct {v2}, Lcom/towbook/api/Asset;-><init>()V

    .line 988
    new-instance v3, Lcom/towbook/api/Status;

    const-string v4, "Waiting"

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/towbook/api/Status;-><init>(ILjava/lang/String;)V

    .line 989
    invoke-virtual {v0, v3}, Lcom/towbook/api/Call;->setStatus(Lcom/towbook/api/Status;)V

    .line 990
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/towbook/api/Asset;->setYear(Ljava/lang/Integer;)V

    const-string v3, ""

    .line 991
    invoke-virtual {v2, v3}, Lcom/towbook/api/Asset;->setMake(Ljava/lang/String;)V

    const-string v3, ""

    .line 992
    invoke-virtual {v2, v3}, Lcom/towbook/api/Asset;->setModel(Ljava/lang/String;)V

    .line 994
    invoke-static {p1}, Lcom/towbook/utils/AppUtils;->getMyAccount(Landroid/app/Activity;)Lcom/towbook/api/MyAccount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/towbook/api/MyAccount;->getCompanyId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/towbook/api/Call;->setCompanyId(Ljava/lang/Integer;)V

    .line 996
    invoke-virtual {p0}, Lcom/towbook/api/Account;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 997
    invoke-virtual {v0, p0}, Lcom/towbook/api/Call;->setAccount(Lcom/towbook/api/Account;)V

    .line 999
    :cond_45
    invoke-virtual {p0}, Lcom/towbook/api/Account;->getDefaultTowFrom()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/towbook/api/Call;->setTowSource(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Lcom/towbook/api/Account;->getImpoundDestinationStorageLotId()I

    move-result p1

    if-lez p1, :cond_65

    const/4 p1, 0x1

    .line 1001
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/towbook/api/Call;->setImpound(Ljava/lang/Boolean;)V

    .line 1002
    invoke-virtual {p0}, Lcom/towbook/api/Account;->getImpoundDestinationStorageLotId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/towbook/api/Call;->setImpoundLotId(Ljava/lang/Integer;)V

    .line 1005
    :cond_65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    invoke-virtual {v0, v1}, Lcom/towbook/api/Call;->setAssets(Ljava/util/ArrayList;)V

    .line 1008
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    invoke-virtual {v0, p0}, Lcom/towbook/api/Call;->setInvoiceItems(Ljava/util/List;)V

    return-object v0
.end method

.method public static getAStickerForAdd(Lcom/towbook/api/Account;Landroid/app/Activity;)Lcom/towbook/api/stickering/Sticker;
    .registers 4

    .line 1015
    new-instance v0, Lcom/towbook/api/stickering/Sticker;

    invoke-direct {v0}, Lcom/towbook/api/stickering/Sticker;-><init>()V

    const/4 v1, 0x0

    .line 1017
    invoke-virtual {v0, v1}, Lcom/towbook/api/stickering/Sticker;->setStatusId(I)V

    .line 1018
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/towbook/api/stickering/Sticker;->setModelYear(Ljava/lang/Integer;)V

    const-string v1, ""

    .line 1019
    invoke-virtual {v0, v1}, Lcom/towbook/api/stickering/Sticker;->setMake(Ljava/lang/String;)V

    const-string v1, ""

    .line 1020
    invoke-virtual {v0, v1}, Lcom/towbook/api/stickering/Sticker;->setModel(Ljava/lang/String;)V

    .line 1021
    invoke-static {p1}, Lcom/towbook/utils/AppUtils;->getMyAccount(Landroid/app/Activity;)Lcom/towbook/api/MyAccount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/towbook/api/MyAccount;->getCompanyId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/towbook/api/stickering/Sticker;->setCompanyId(I)V

    if-eqz p0, :cond_32

    .line 1024
    invoke-virtual {p0}, Lcom/towbook/api/Account;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/towbook/api/stickering/Sticker;->setAccountId(I)V

    :cond_32
    return-object v0
.end method

.method public static getAccountById(ILandroid/content/Context;)Lcom/towbook/api/Account;
    .registers 5

    .line 541
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {p1}, Lcom/towbook/mobile/TowbookApplication;->getConfig()Lcom/towbook/api/ConfigSettings;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Lcom/towbook/api/ConfigSettings;->getAccountsWithBlank()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 544
    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 545
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Account;

    .line 547
    invoke-virtual {v1}, Lcom/towbook/api/Account;->getId()I

    move-result v2

    if-ne v2, p0, :cond_22

    return-object v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppTheme(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "setting_theme"

    .line 2178
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppUserAgent()Ljava/lang/String;
    .registers 5

    const-string v0, "Towbook-Android/2.9.25"

    .line 1489
    :try_start_2
    invoke-static {}, Lcom/towbook/utils/AppUtils;->getGitRepositoryState()Lcom/towbook/mobile/classes/GitRepositoryState;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 1491
    invoke-virtual {v1}, Lcom/towbook/mobile/classes/GitRepositoryState;->getCommitId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1492
    invoke-virtual {v1}, Lcom/towbook/mobile/classes/GitRepositoryState;->getCommitId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s-%s"

    const/4 v4, 0x2

    .line 1493
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_26} :catch_28

    move-object v0, v1

    goto :goto_2c

    :catch_28
    move-exception v1

    .line 1496
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public static getBitmapFactoryOption()Landroid/graphics/BitmapFactory$Options;
    .registers 2

    .line 242
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 243
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x1

    .line 244
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 245
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-object v0
.end method

.method public static getBodyTypeNameById(Lcom/towbook/api/ConfigSettings;I)Ljava/lang/String;
    .registers 4

    .line 2070
    invoke-virtual {p0}, Lcom/towbook/api/ConfigSettings;->getVehicle()Lcom/towbook/api/Vehicle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/towbook/api/Vehicle;->getTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/classes/ItemSpinner;

    .line 2071
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemSpinner;->getId()I

    move-result v1

    if-ne v1, p1, :cond_c

    .line 2072
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ItemSpinner;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string p0, ""

    return-object p0
.end method

.method public static getCallPaid()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "No Payment"

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Cash"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Check"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Visa"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "MasterCard"

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Discover"

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "AMEX"

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Other"

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Debit Card"

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Charge to Account"

    const/16 v3, 0x9

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "EFT"

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCallPayment()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Cash"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Check"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Visa"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "MasterCard"

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Discover"

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "AMEX"

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Other"

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Debit Card"

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "EFT"

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getClosestView(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_3
    const/16 v3, 0xa

    if-ge v1, v3, :cond_2f

    if-nez v2, :cond_10

    .line 1732
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_2c

    .line 1733
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1734
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_2c

    .line 1735
    :cond_21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2c

    return-object v2

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2f
    return-object v0
.end method

.method public static getColorNameById(Lcom/towbook/api/ConfigSettings;I)Ljava/lang/String;
    .registers 4

    .line 2079
    invoke-virtual {p0}, Lcom/towbook/api/ConfigSettings;->getVehicle()Lcom/towbook/api/Vehicle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/towbook/api/Vehicle;->getColors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Color;

    .line 2080
    invoke-virtual {v0}, Lcom/towbook/api/Color;->getId()I

    move-result v1

    if-ne v1, p1, :cond_c

    .line 2081
    invoke-virtual {v0}, Lcom/towbook/api/Color;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string p0, ""

    return-object p0
.end method

.method public static getCompletionTimeTotal(JJLandroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-wide v0, 0xe8d4a51000L

    cmp-long p4, p0, v0

    if-gez p4, :cond_d

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    :cond_d
    cmp-long p4, p0, p2

    if-gtz p4, :cond_9d

    const-wide/16 v0, 0x0

    cmp-long p4, p0, v0

    if-gtz p4, :cond_19

    goto/16 :goto_9d

    :cond_19
    const/4 p4, 0x0

    sub-long v0, p2, p0

    const-wide/32 p0, 0xea60

    cmp-long p2, v0, p0

    if-gez p2, :cond_26

    const-string p0, "just now"

    return-object p0

    :cond_26
    const-wide/32 p2, 0x1d4c0

    cmp-long p4, v0, p2

    if-gez p4, :cond_30

    const-string p0, "Took 1m"

    return-object p0

    :cond_30
    const-wide/32 p2, 0x2dc6c0

    cmp-long p4, v0, p2

    if-gez p4, :cond_4f

    .line 1847
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Took "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v0, p0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "m"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    const-wide/32 p0, 0x5265c0

    cmp-long p2, v0, p0

    if-gez p2, :cond_59

    const-string p0, "Took 1h"

    return-object p0

    :cond_59
    const-wide/32 p0, 0x5265c00

    cmp-long p2, v0, p0

    if-gez p2, :cond_7b

    .line 1851
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Took "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 p1, 0x36ee80

    div-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "h"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7b
    const-wide/32 p2, 0xa4cb800

    cmp-long p4, v0, p2

    if-gez p4, :cond_85

    const-string p0, "Took 1d"

    return-object p0

    .line 1855
    :cond_85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Took "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v0, p0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "d"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9d
    :goto_9d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContactType()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Other"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Owner"

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Lienholder"

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCostForRateItem(Landroid/widget/Spinner;Lcom/towbook/api/ConfigSettings;Lcom/towbook/api/InvoiceItem;Lcom/towbook/api/Account;)D
    .registers 4

    .line 1674
    invoke-virtual {p2, p1}, Lcom/towbook/api/InvoiceItem;->getRateItem(Lcom/towbook/api/ConfigSettings;)Lcom/towbook/api/RateItem;

    move-result-object p2

    .line 1676
    invoke-static {p0, p1, p2, p3}, Lcom/towbook/utils/AppUtils;->getRateItemCost(Landroid/widget/Spinner;Lcom/towbook/api/ConfigSettings;Lcom/towbook/api/RateItem;Lcom/towbook/api/Account;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getCurrentLatLng(Landroid/app/Activity;)Landroid/location/Location;
    .registers 3

    const-string v0, "location"

    .line 1547
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 1550
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 1556
    :try_start_e
    sget-object v0, Lcom/towbook/mobile/service/LocationService;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_24

    .line 1557
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_24

    const/4 p0, 0x1

    const-string v0, "TowbookDebug:"

    const-string v1, "Last Location available and accurate!"

    .line 1559
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    if-eqz p0, :cond_29

    .line 1567
    sget-object p0, Lcom/towbook/mobile/service/LocationService;->mLastLocation:Landroid/location/Location;

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    const-string v0, "Towbook"

    const/4 v1, 0x0

    .line 1091
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    .line 1092
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "Towbook"

    const/4 v1, 0x0

    .line 1096
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    .line 1097
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDayNumberSuffix(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xb

    if-lt p0, v0, :cond_b

    const/16 v0, 0xd

    if-gt p0, v0, :cond_b

    const-string p0, "th"

    return-object p0

    .line 1432
    :cond_b
    rem-int/lit8 p0, p0, 0xa

    packed-switch p0, :pswitch_data_1c

    const-string p0, "th"

    return-object p0

    :pswitch_13
    const-string p0, "rd"

    return-object p0

    :pswitch_16
    const-string p0, "nd"

    return-object p0

    :pswitch_19
    const-string p0, "st"

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1453
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDirectory(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 300
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 303
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    .line 305
    :cond_28
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    :goto_2d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_36

    .line 309
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 311
    :cond_36
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExternalOutputMediaFile(I)Ljava/io/File;
    .registers 3

    .line 2309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_22

    .line 2310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMG_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    :goto_1a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    :cond_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VID_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    goto :goto_1a

    .line 2312
    :goto_32
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->getExternalOutputMediaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getExternalOutputMediaFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 2316
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Towbook"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2319
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    .line 2321
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2323
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getGitRepositoryState()Lcom/towbook/mobile/classes/GitRepositoryState;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1465
    sget-object v0, Lcom/towbook/utils/AppUtils;->gitRepositoryState:Lcom/towbook/mobile/classes/GitRepositoryState;

    if-nez v0, :cond_24

    .line 1466
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1467
    const-class v1, Lcom/towbook/utils/AppUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "git.properties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1470
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1473
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1d

    .line 1479
    :catch_1d
    :cond_1d
    new-instance v1, Lcom/towbook/mobile/classes/GitRepositoryState;

    invoke-direct {v1, v0}, Lcom/towbook/mobile/classes/GitRepositoryState;-><init>(Ljava/util/Properties;)V

    sput-object v1, Lcom/towbook/utils/AppUtils;->gitRepositoryState:Lcom/towbook/mobile/classes/GitRepositoryState;

    .line 1481
    :cond_24
    sget-object v0, Lcom/towbook/utils/AppUtils;->gitRepositoryState:Lcom/towbook/mobile/classes/GitRepositoryState;

    return-object v0
.end method

.method public static getIdOrDefault(Lcom/towbook/api/ApiItem;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 881
    :cond_4
    invoke-interface {p0}, Lcom/towbook/api/ApiItem;->getId()I

    move-result p0

    :goto_8
    return p0
.end method

.method public static getImpoundAddress(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_37

    .line 1616
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_37

    .line 1619
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getConfig()Lcom/towbook/api/ConfigSettings;

    move-result-object p0

    .line 1620
    invoke-virtual {p0}, Lcom/towbook/api/ConfigSettings;->getImpoundLots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/ImpoundLot;

    .line 1621
    invoke-virtual {v0}, Lcom/towbook/api/ImpoundLot;->getId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1b

    .line 1622
    invoke-virtual {v0}, Lcom/towbook/api/ImpoundLot;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    return-object p2

    :cond_37
    :goto_37
    return-object p2
.end method

.method public static getInternalOutputMediaFile(Landroid/content/Context;I)Ljava/io/File;
    .registers 5

    .line 2296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_22

    .line 2297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VID_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    goto :goto_1a

    .line 2299
    :goto_32
    invoke-static {p0, p1, v0}, Lcom/towbook/utils/AppUtils;->getInternalOutputMediaFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getInternalOutputMediaFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
    .registers 4

    const-string p1, "camera"

    const v0, 0x8000

    .line 2303
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 2305
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getInvoiceSubTotal(Ljava/util/List;)D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;)D"
        }
    .end annotation

    .line 1648
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/InvoiceItem;

    .line 1649
    invoke-virtual {v2}, Lcom/towbook/api/InvoiceItem;->getPredefinedRate()Lcom/towbook/api/Predefined;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Lcom/towbook/api/InvoiceItem;->getPredefinedRate()Lcom/towbook/api/Predefined;

    move-result-object v3

    invoke-virtual {v3}, Lcom/towbook/api/Predefined;->isHidden()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1650
    :cond_22
    invoke-virtual {v2}, Lcom/towbook/api/InvoiceItem;->getItemTotal()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_6

    :cond_28
    return-wide v0
.end method

.method public static getInvoiceTaxTotal(Ljava/util/List;)D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;)D"
        }
    .end annotation

    .line 1657
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/InvoiceItem;

    .line 1658
    invoke-virtual {v2}, Lcom/towbook/api/InvoiceItem;->getPredefinedRate()Lcom/towbook/api/Predefined;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Lcom/towbook/api/InvoiceItem;->getPredefinedRate()Lcom/towbook/api/Predefined;

    move-result-object v3

    invoke-virtual {v3}, Lcom/towbook/api/Predefined;->isHidden()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1659
    :cond_22
    invoke-virtual {v2}, Lcom/towbook/api/InvoiceItem;->getTax()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_6

    :cond_28
    return-wide v0
.end method

.method public static getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 4

    .line 2449
    sget-object v0, Lcom/towbook/mobile/service/LocationService;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_7

    .line 2450
    sget-object p0, Lcom/towbook/mobile/service/LocationService;->mLastLocation:Landroid/location/Location;

    return-object p0

    :cond_7
    const-string v0, "lastKnownLocation"

    .line 2452
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2454
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, ","

    .line 2455
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2456
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2457
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    const/4 v1, 0x1

    .line 2458
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    return-object v0

    :cond_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getModel(Landroid/content/Context;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    new-instance v1, Lcom/towbook/mobile/adapter/DBAdapter;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/adapter/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 635
    invoke-virtual {v1}, Lcom/towbook/mobile/adapter/DBAdapter;->open()Lcom/towbook/mobile/adapter/DBAdapter;

    .line 636
    invoke-virtual {v1, p1}, Lcom/towbook/mobile/adapter/DBAdapter;->getModelByMake(I)Landroid/database/Cursor;

    move-result-object p0

    .line 637
    :goto_11
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2a

    .line 638
    new-instance p1, Lcom/towbook/mobile/classes/ItemSpinner;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 640
    :cond_2a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 641
    invoke-virtual {v1}, Lcom/towbook/mobile/adapter/DBAdapter;->close()V

    .line 642
    new-instance p0, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string p1, "Not Selected"

    invoke-direct {p0, v2, p1}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static getMyAccount(Landroid/app/Activity;)Lcom/towbook/api/MyAccount;
    .registers 4

    const-string v0, "myaccount"

    .line 1101
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    .line 1102
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/towbook/api/MyAccount;

    instance-of v2, v0, Lcom/google/gson/Gson;

    if-nez v2, :cond_16

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1c

    :cond_16
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :goto_1c
    check-cast p0, Lcom/towbook/api/MyAccount;

    return-object p0
.end method

.method public static getMyAccount(Landroid/content/Context;)Lcom/towbook/api/MyAccount;
    .registers 4

    const-string v0, "myaccount"

    .line 1106
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 1107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 1108
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/towbook/api/MyAccount;

    instance-of v2, v0, Lcom/google/gson/Gson;

    if-nez v2, :cond_1e

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_24

    :cond_1e
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :goto_24
    check-cast p0, Lcom/towbook/api/MyAccount;

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNameActionForExit(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    const-string v0, "%s.ACTION_EXIT"

    const/4 v1, 0x1

    .line 1449
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNameActionForSignOut(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    const-string v0, "%s.ACTION_LOGOUT"

    const/4 v1, 0x1

    .line 1445
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .registers 9

    const-string v0, "_data"

    .line 1596
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 1597
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, "_data"

    .line 1598
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1599
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1600
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1601
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public static getPathForCamera(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/towbook.png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[Towbook-AppUtils]"

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getPayment()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 703
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Release With Payment"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Release/New Owner"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Scrapped"

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Other"

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getPhotoOutputPath(Landroid/content/Context;II)Ljava/lang/String;
    .registers 7

    .line 361
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d-%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/towbook/utils/AppUtils;->getPhotoOutputPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoOutputPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "mounted"

    .line 367
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 368
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    .line 370
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 373
    :goto_24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string v5, "Towbook"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 377
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s/%s.jpg"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const-string p0, "Towbook"

    aput-object p0, v3, v6

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPriority()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 626
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Normal"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "High"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Low"

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getRateItemCost(Landroid/widget/Spinner;Lcom/towbook/api/ConfigSettings;Lcom/towbook/api/RateItem;Lcom/towbook/api/Account;)D
    .registers 8

    .line 1683
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/towbook/mobile/classes/ItemSpinner;

    invoke-virtual {p0}, Lcom/towbook/mobile/classes/ItemSpinner;->getId()I

    move-result p0

    .line 1686
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_1d

    invoke-virtual {v0, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_1d
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    const-class v1, Lcom/towbook/api/Account;

    instance-of v2, p1, Lcom/google/gson/Gson;

    if-nez v2, :cond_2e

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_34

    :cond_2e
    check-cast p1, Lcom/google/gson/Gson;

    invoke-static {p1, v0, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_34
    check-cast p1, Lcom/towbook/api/Account;

    const-string v0, "[Towbook-AppUtils]"

    .line 1688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account for list with rate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    instance-of v3, v2, Lcom/google/gson/Gson;

    if-nez v3, :cond_50

    invoke-virtual {v2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    :cond_50
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, p3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[Towbook-AppUtils]"

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account for list with rate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/towbook/api/Account;->getRateItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[Towbook-AppUtils]"

    .line 1690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account for list with rate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/towbook/api/Account;->getRateItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-virtual {p2}, Lcom/towbook/api/RateItem;->getCost()D

    move-result-wide v0

    const-string p1, "[Towbook-AppUtils]"

    .line 1694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extend rate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/towbook/api/RateItem;->getExtendedRates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-virtual {p2, p0}, Lcom/towbook/api/RateItem;->hasExtendedRate(I)Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 1699
    invoke-virtual {p2, p0}, Lcom/towbook/api/RateItem;->getPriceFromExtendedRateByBodyTypeId(I)D

    move-result-wide v0

    .line 1704
    :cond_bc
    invoke-virtual {p2}, Lcom/towbook/api/RateItem;->getId()I

    move-result p1

    invoke-virtual {p3, p1, p0, v0, v1}, Lcom/towbook/api/Account;->getRateItemPrice(IID)D

    move-result-wide v0

    const-string p1, "[Towbook-AppUtils]"

    .line 1706
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCostForRateItem: rateItemId="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/towbook/api/RateItem;->getId()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", price: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", bodyType:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getRateItems(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/RateItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/towbook/api/RateItem;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p0

    .line 1516
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/towbook/api/RateItem;

    const-string v0, "[Towbook-AppUtils]"

    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RateItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/towbook/api/RateItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-virtual {p2}, Lcom/towbook/api/RateItem;->getPredefined()Lcom/towbook/api/Predefined;

    move-result-object v0

    if-nez v0, :cond_41

    .line 1523
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1526
    :cond_41
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_45
    return-object p1
.end method

.method public static getSelectedById(Landroid/widget/Spinner;I)I
    .registers 6

    .line 900
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1d

    .line 902
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/ImpoundLot;

    .line 903
    invoke-virtual {v3}, Lcom/towbook/api/ImpoundLot;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    move v1, v2

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    :goto_1d
    return v1
.end method

.method public static getSelectedCharges(Landroid/widget/Spinner;Ljava/lang/String;)I
    .registers 6

    .line 913
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_21

    .line 915
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/RateItem;

    .line 916
    invoke-virtual {v3}, Lcom/towbook/api/RateItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v1, v2

    goto :goto_21

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_21
    :goto_21
    return v1
.end method

.method public static getSelectedContact(Landroid/widget/Spinner;Ljava/lang/Integer;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 929
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_24

    .line 931
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/ApiItem;

    .line 932
    invoke-interface {v3}, Lcom/towbook/api/ApiItem;->getId()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_21

    move v0, v2

    goto :goto_24

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_24
    :goto_24
    return v0
.end method

.method public static getSelectedItemSpinner(Landroid/widget/Spinner;Ljava/lang/Integer;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 807
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/towbook/utils/AppUtils;->getSelectedItemSpinner(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSelectedItemSpinner(Landroid/widget/Spinner;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 815
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 816
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_4f

    .line 819
    :try_start_15
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/mobile/classes/ItemSpinner;

    .line 820
    invoke-virtual {v3}, Lcom/towbook/mobile/classes/ItemSpinner;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    const-string v4, ""

    .line 821
    invoke-virtual {v3, v4}, Lcom/towbook/mobile/classes/ItemSpinner;->setName(Ljava/lang/String;)V

    .line 822
    :cond_2a
    invoke-virtual {v3}, Lcom/towbook/mobile/classes/ItemSpinner;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_3e} :catch_45

    if-eqz v3, :cond_42

    move v0, v2

    goto :goto_4f

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :catch_45
    move-exception p0

    const-string p1, "[Towbook-AppUtils]"

    .line 828
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    :goto_4f
    return v0
.end method

.method public static getSelectedItemSpinnerForMake(Landroid/widget/Spinner;Ljava/lang/String;)I
    .registers 8

    .line 852
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_34

    .line 854
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/ApiItem;

    .line 855
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_35

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_34
    const/4 v2, 0x0

    .line 861
    :goto_35
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 862
    new-instance v3, Lcom/towbook/mobile/classes/ItemSpinner;

    invoke-direct {v3, v1, p1}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 863
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    const-string v0, "[Towbook-AppUtils]"

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static getSelectedItemSpinnerWithID(Landroid/widget/Spinner;I)I
    .registers 6

    .line 835
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_27

    .line 838
    :try_start_8
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/ApiItem;

    .line 839
    invoke-interface {v3}, Lcom/towbook/api/ApiItem;->getId()I

    move-result v3
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_16} :catch_1d

    if-ne v3, p1, :cond_1a

    move v1, v2

    goto :goto_27

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_1d
    move-exception p0

    const-string p1, "[Towbook-AppUtils]"

    .line 845
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    return v1
.end method

.method public static getSelectedStatus(Landroid/widget/Spinner;Ljava/lang/String;)I
    .registers 7

    .line 942
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_29

    .line 944
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/Status;

    .line 945
    invoke-virtual {v3}, Lcom/towbook/api/Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v1, v2

    goto :goto_29

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_29
    :goto_29
    return v1
.end method

.method public static getSharedPreferences(Landroid/app/Activity;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "Towbook"

    const/4 v1, 0x0

    .line 1923
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getSpinnerIndexOf(Landroid/widget/Spinner;Ljava/lang/Integer;Ljava/lang/Class;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/towbook/api/ApiItem;",
            ">(",
            "Landroid/widget/Spinner;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 887
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_27

    .line 890
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/ApiItem;

    .line 892
    invoke-interface {v3}, Lcom/towbook/api/ApiItem;->getId()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_24

    return v2

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_27
    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 5

    .line 1766
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    .line 1768
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public static getStickerAccount(ILjava/util/List;)Lcom/towbook/api/stickering/StickerAccount;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/towbook/api/stickering/StickerAccount;",
            ">;)",
            "Lcom/towbook/api/stickering/StickerAccount;"
        }
    .end annotation

    .line 2135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/stickering/StickerAccount;

    .line 2136
    invoke-virtual {v0}, Lcom/towbook/api/stickering/StickerAccount;->getId()I

    move-result v1

    if-ne v1, p0, :cond_4

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStickerPaid()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 688
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Cash"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Check"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Visa"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "MasterCard"

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Discover"

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "AMEX"

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Other"

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Debit Card"

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Charge to Account"

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "EFT"

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getStringFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2437
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2438
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2440
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 2442
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getTax(Ljava/util/List;Lcom/towbook/api/ConfigSettings;)D
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;",
            "Lcom/towbook/api/ConfigSettings;",
            ")D"
        }
    .end annotation

    .line 1666
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/InvoiceItem;

    .line 1667
    invoke-virtual {v2, p1}, Lcom/towbook/api/InvoiceItem;->getTax(Lcom/towbook/api/ConfigSettings;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_6

    :cond_18
    return-wide v0
.end method

.method public static getTemporalOutputMediaFile(Landroid/content/Context;I)Ljava/io/File;
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    :try_start_3
    const-string v1, "IMG_"

    goto :goto_8

    :cond_6
    const-string v1, "VID_"

    :goto_8
    if-ne p1, v0, :cond_d

    const-string v0, "jpg"

    goto :goto_f

    :cond_d
    const-string v0, "mp4"

    .line 2289
    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_18

    return-object v0

    .line 2291
    :catch_18
    invoke-static {p0, p1}, Lcom/towbook/utils/AppUtils;->getInternalOutputMediaFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeAgo(J)Ljava/lang/String;
    .registers 7

    const-wide v0, 0xe8d4a51000L

    cmp-long v2, p0, v0

    if-gez v2, :cond_d

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 1779
    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_99

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-gtz v4, :cond_24

    goto :goto_99

    :cond_24
    const/4 v2, 0x0

    sub-long v2, v0, p0

    const-wide/32 p0, 0xea60

    cmp-long v0, v2, p0

    if-gez v0, :cond_31

    const-string p0, "just now"

    return-object p0

    :cond_31
    const-wide/32 v0, 0x1d4c0

    cmp-long v4, v2, v0

    if-gez v4, :cond_3b

    const-string p0, "1m ago"

    return-object p0

    :cond_3b
    const-wide/32 v0, 0x2dc6c0

    cmp-long v4, v2, v0

    if-gez v4, :cond_55

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "m ago"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_55
    const-wide/32 p0, 0x5265c0

    cmp-long v0, v2, p0

    if-gez v0, :cond_5f

    const-string p0, "1h ago"

    return-object p0

    :cond_5f
    const-wide/32 p0, 0x5265c00

    cmp-long v0, v2, p0

    if-gez v0, :cond_7c

    .line 1794
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v0, 0x36ee80

    div-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "h ago"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7c
    const-wide/32 v0, 0xa4cb800

    cmp-long v4, v2, v0

    if-gez v4, :cond_86

    const-string p0, "1d ago"

    return-object p0

    .line 1798
    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "d ago"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_99
    :goto_99
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTimeFromNow(J)Ljava/lang/String;
    .registers 8

    const-wide v0, 0xe8d4a51000L

    cmp-long v2, p0, v0

    if-gez v2, :cond_d

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 1808
    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_98

    const-wide/16 v4, 0x0

    cmp-long v2, p0, v4

    if-gtz v2, :cond_25

    goto :goto_98

    :cond_25
    const/4 v2, 0x0

    sub-long v4, p0, v0

    const-wide/32 p0, 0xea60

    cmp-long v0, v4, p0

    if-gez v0, :cond_30

    return-object v3

    :cond_30
    const-wide/32 v0, 0x1d4c0

    cmp-long v2, v4, v0

    if-gez v2, :cond_3a

    const-string p0, "1m"

    return-object p0

    :cond_3a
    const-wide/32 v0, 0x2dc6c0

    cmp-long v2, v4, v0

    if-gez v2, :cond_54

    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "m"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_54
    const-wide/32 p0, 0x5265c0

    cmp-long v0, v4, p0

    if-gez v0, :cond_5e

    const-string p0, "1h"

    return-object p0

    :cond_5e
    const-wide/32 p0, 0x5265c00

    cmp-long v0, v4, p0

    if-gez v0, :cond_7b

    .line 1823
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v0, 0x36ee80

    div-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "h"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7b
    const-wide/32 v0, 0xa4cb800

    cmp-long v2, v4, v0

    if-gez v2, :cond_85

    const-string p0, "1d"

    return-object p0

    .line 1827
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_98
    :goto_98
    return-object v3
.end method

.method public static getTowbookRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f0e0015

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getTruckDuty()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Not Selected"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Medium"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Heavy"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Other"

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Light"

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTruckType()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 607
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Not Selected"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Wrecker"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Flat Bed"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Other"

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTypeDuty()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Unspecified"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTypeTruck()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 574
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Not Selected"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTypeUsers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Manager"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Dispatcher"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Driver"

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getUserNameById(I)Ljava/lang/String;
    .registers 4

    .line 2021
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    if-eqz v0, :cond_21

    .line 2022
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/User;

    .line 2023
    invoke-virtual {v1}, Lcom/towbook/api/User;->getId()I

    move-result v2

    if-ne v2, p0, :cond_a

    .line 2024
    invoke-virtual {v1}, Lcom/towbook/api/User;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-string p0, "?"

    return-object p0
.end method

.method public static getVehicleModelYears()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemSpinner;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    new-instance v1, Lcom/towbook/mobile/classes/ItemSpinner;

    const-string v2, "Not Selected"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 597
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    move v2, v1

    :goto_1b
    add-int/lit8 v3, v1, -0x28

    if-le v2, v3, :cond_3b

    .line 599
    new-instance v3, Lcom/towbook/mobile/classes/ItemSpinner;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/towbook/mobile/classes/ItemSpinner;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_3b
    return-object v0
.end method

.method public static handlePhoneCall(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .line 962
    new-instance v0, Lcom/towbook/utils/AppUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/towbook/utils/AppUtils$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    .line 978
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->getAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dial:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Yes"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "No"

    .line 980
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static handleRequestPermissionResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    .line 1965
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/towbook/utils/AppUtils;->handleRequestPermissionResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs handleRequestPermissionResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    .line 1971
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_13

    aget-object v4, p3, v2

    .line 1972
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 p3, 0x1

    goto :goto_14

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    const/4 p3, 0x0

    :goto_14
    if-eqz p3, :cond_29

    const p1, 0x7f0f026e

    .line 1979
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/towbook/utils/AppUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3e

    :cond_29
    const p3, 0x7f0f0270

    .line 1981
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/towbook/utils/AppUtils;->showSettingsSnackbarFor(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_3e
    return-void
.end method

.method public static hasConnection(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "connectivity"

    .line 1256
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 1258
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1259
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    const/4 v1, 0x0

    .line 1263
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 1264
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_24

    return v0

    .line 1268
    :cond_24
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 1269
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_31

    return v0

    :cond_31
    return v1
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1935
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-gt v0, v2, :cond_8

    return v1

    .line 1939
    :cond_8
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static initDb(Landroid/content/Context;)V
    .registers 5

    .line 722
    :try_start_0
    new-instance v0, Lcom/towbook/mobile/adapter/DBAdapter;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/adapter/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 723
    invoke-virtual {v0}, Lcom/towbook/mobile/adapter/DBAdapter;->open()Lcom/towbook/mobile/adapter/DBAdapter;

    .line 724
    invoke-virtual {v0}, Lcom/towbook/mobile/adapter/DBAdapter;->countOfModel()I

    move-result v1

    .line 725
    invoke-virtual {v0}, Lcom/towbook/mobile/adapter/DBAdapter;->close()V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/databases/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "towbook.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3b

    if-gtz v1, :cond_86

    .line 731
    :cond_3b
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "towbook.db"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 732
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    .line 734
    new-array v0, v0, [B

    .line 736
    :goto_4e
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_59

    const/4 v3, 0x0

    .line 737
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4e

    .line 739
    :cond_59
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 740
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5f} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_86

    :catch_60
    move-exception p0

    const-string v0, "[Towbook-AppUtils]"

    .line 746
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_86

    :catch_6b
    move-exception p0

    const-string v0, "[Towbook-AppUtils]"

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDb Error: Couldn\'t open file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    return-void
.end method

.method public static isApplicationInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 3

    const/4 v0, 0x1

    .line 1888
    :try_start_1
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_4} :catch_5

    return v0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isDarkTheme(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "setting_theme"

    .line 1928
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dark"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isDeviceLocationSettingEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 2091
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1b

    const/4 v0, 0x0

    .line 2093
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "location_mode"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_12} :catch_16

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    :catch_16
    move-exception p0

    .line 2096
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v0

    .line 2103
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_providers_allowed"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static isEmailValid(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 954
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public static isExistInRate(ILjava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;)Z"
        }
    .end annotation

    .line 1574
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/InvoiceItem;

    .line 1575
    invoke-virtual {v0}, Lcom/towbook/api/InvoiceItem;->getRateItemId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p0, v0, :cond_1c

    if-nez p0, :cond_4

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static isExistsDataModel(Landroid/content/Context;)Z
    .registers 2

    .line 711
    new-instance v0, Lcom/towbook/mobile/adapter/DBAdapter;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/adapter/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 712
    invoke-virtual {v0}, Lcom/towbook/mobile/adapter/DBAdapter;->open()Lcom/towbook/mobile/adapter/DBAdapter;

    .line 713
    invoke-virtual {v0}, Lcom/towbook/mobile/adapter/DBAdapter;->countOfModel()I

    move-result p0

    .line 714
    invoke-virtual {v0}, Lcom/towbook/mobile/adapter/DBAdapter;->close()V

    if-lez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isFeatureEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 1905
    invoke-static {p0}, Lcom/towbook/mobile/TowbookApplication;->getConfig(Landroid/content/Context;)Lcom/towbook/api/ConfigSettings;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 1908
    invoke-virtual {p0}, Lcom/towbook/api/ConfigSettings;->getFeatures()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 1910
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 1911
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Feature;

    .line 1912
    invoke-virtual {v0}, Lcom/towbook/api/Feature;->getId()I

    move-result v1

    if-ne v1, p1, :cond_16

    .line 1913
    invoke-virtual {v0}, Lcom/towbook/api/Feature;->isEnabled()Z

    move-result p0

    return p0

    :cond_2d
    const/16 p0, 0x64

    if-ne p1, p0, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public static isFileExists(Lcom/towbook/api/Photo;Landroid/app/Activity;)Z
    .registers 6

    .line 315
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%s/%s/%d-%d.jpg"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Towbook"

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 316
    invoke-virtual {p0}, Lcom/towbook/api/Photo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {p0}, Lcom/towbook/api/Photo;->getCallId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 315
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/towbook/api/Photo;->setDetails(Ljava/lang/String;)V

    .line 320
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isFileExistsForSticker(Lcom/towbook/api/Photo;Landroid/app/Activity;)Z
    .registers 6

    .line 352
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%s/%s/%d-%d.jpg"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Towbook/stickers"

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 353
    invoke-virtual {p0}, Lcom/towbook/api/Photo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {p0}, Lcom/towbook/api/Photo;->getStickerId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 352
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-virtual {p0, p1}, Lcom/towbook/api/Photo;->setDetails(Ljava/lang/String;)V

    .line 356
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isGPSEnabled(Landroid/content/Context;Landroid/location/LocationManager;)Z
    .registers 3

    const-string v0, "gps"

    .line 2112
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2113
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isGoogleMapsInstalled(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2248
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    return v0
.end method

.method public static isHighAccuracyEnabled(Landroid/app/Activity;)Z
    .registers 4

    .line 2355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1f

    const/4 v0, 0x0

    .line 2359
    :try_start_8
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "location_mode"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_12} :catch_13

    goto :goto_18

    :catch_13
    move-exception p0

    .line 2362
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_1e

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0

    .line 2368
    :cond_1f
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_providers_allowed"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2370
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static isListContactEmpty(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Contact;",
            ">;)Z"
        }
    .end annotation

    .line 1308
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Contact;

    .line 1309
    invoke-virtual {v0}, Lcom/towbook/api/Contact;->getContactString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 2121
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->isDeviceLocationSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const-string v0, "location"

    .line 2122
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_18

    .line 2124
    invoke-static {p0, v0}, Lcom/towbook/utils/AppUtils;->isGPSEnabled(Landroid/content/Context;Landroid/location/LocationManager;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    :cond_19
    return v1
.end method

.method public static isNullOrWhiteSpace(Landroid/text/Editable;)Z
    .registers 1

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNullOrWhiteSpace(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 207
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 208
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_17

    return v1

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v0
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 2182
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static varargs isPermissionGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 6

    .line 2186
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_11

    aget-object v3, p1, v2

    .line 2187
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_e

    return v1

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static isPhoneValid(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 958
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "activity"

    .line 2144
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_33

    const v0, 0x7fffffff

    .line 2147
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2148
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public static isSignatureExists(Lcom/towbook/api/Signature;Landroid/app/Activity;)Z
    .registers 6

    .line 335
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%s/%s/%d-%d.jpg"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Towbook"

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 336
    invoke-virtual {p0}, Lcom/towbook/api/Signature;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {p0}, Lcom/towbook/api/Signature;->getCallId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 335
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {p0, p1}, Lcom/towbook/api/Signature;->setDetails(Ljava/lang/String;)V

    .line 340
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isUpdateConfig(Ljava/lang/String;)Z
    .registers 6

    .line 1457
    sget-object v0, Lcom/towbook/utils/Constants;->PUSHER_EVENT_CONFIG_UPDATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 1458
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public static isUserAssignedToCallAsDriver(ILcom/towbook/api/Call;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/towbook/api/Call;",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;)Z"
        }
    .end annotation

    .line 2468
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getDriverIds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/towbook/utils/AppUtils$$Lambda$4;

    invoke-direct {v0, p2}, Lcom/towbook/utils/AppUtils$$Lambda$4;-><init>(Ljava/util/List;)V

    .line 2469
    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/towbook/utils/AppUtils$$Lambda$5;->$instance:Lcom/annimon/stream/function/Predicate;

    .line 2476
    invoke-virtual {p1, p2}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/towbook/utils/AppUtils$$Lambda$6;->$instance:Lcom/annimon/stream/function/Function;

    .line 2477
    invoke-virtual {p1, p2}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object p1

    .line 2478
    invoke-static {}, Lcom/annimon/stream/Collectors;->toList()Lcom/annimon/stream/Collector;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/annimon/stream/Stream;->collect(Lcom/annimon/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2480
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static final synthetic lambda$isUserAssignedToCallAsDriver$5$AppUtils(Ljava/util/List;Ljava/lang/Integer;)Lcom/towbook/api/Driver;
    .registers 3

    .line 2470
    invoke-static {p0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/towbook/utils/AppUtils$$Lambda$7;

    invoke-direct {v0, p1}, Lcom/towbook/utils/AppUtils$$Lambda$7;-><init>(Ljava/lang/Integer;)V

    .line 2471
    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p0

    .line 2472
    invoke-virtual {p0}, Lcom/annimon/stream/Stream;->findFirst()Lcom/annimon/stream/Optional;

    move-result-object p0

    .line 2474
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/towbook/api/Driver;

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return-object p0
.end method

.method static final synthetic lambda$isUserAssignedToCallAsDriver$6$AppUtils(Lcom/towbook/api/Driver;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method static final synthetic lambda$isUserAssignedToCallAsDriver$7$AppUtils(Lcom/towbook/api/Driver;)Ljava/lang/Integer;
    .registers 1

    .line 2477
    invoke-virtual {p0}, Lcom/towbook/api/Driver;->getLinkedUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$null$4$AppUtils(Ljava/lang/Integer;Lcom/towbook/api/Driver;)Z
    .registers 2

    .line 2471
    invoke-virtual {p1}, Lcom/towbook/api/Driver;->getId()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static final synthetic lambda$requestBasePermissionsRationale$1$AppUtils(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "app_location_perm_dismiss"

    const-string v1, "true"

    .line 2226
    invoke-static {v0, v1, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static final synthetic lambda$requestBasePermissionsRationale$2$AppUtils(ZLandroid/app/Activity;)V
    .registers 5

    if-eqz p0, :cond_e

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2230
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2de

    invoke-static {p1, p0, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2c

    .line 2234
    :cond_e
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 2235
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package"

    const-string v1, "com.towbook.mobile"

    const/4 v2, 0x0

    .line 2236
    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2237
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 2238
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2240
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2c
    return-void
.end method

.method static final synthetic lambda$showSnackbarFor$0$AppUtils(Ljava/lang/String;Landroid/app/Activity;ILandroid/view/View;)V
    .registers 7

    .line 1998
    new-instance p3, Landroid/content/Intent;

    const-string v0, "package"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p0, "android.intent.category.DEFAULT"

    .line 1999
    invoke-virtual {p3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2001
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static final synthetic lambda$verifyNetworkMetered$3$AppUtils(Landroid/app/Activity;)V
    .registers 5

    .line 2393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2394
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static makePhoneCall(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2257
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2260
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5d

    :try_start_1c
    const-string v1, "[^\\d.]"

    const-string v2, ""

    .line 2264
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_41

    .line 2267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2269
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2271
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    :cond_5d
    const-string p1, "Your device has not phone calls support."

    const/4 v0, 0x1

    .line 2276
    invoke-static {p0, p1, v0}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object p0

    invoke-virtual {p0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    return-void
.end method

.method public static parseDouble(Ljava/lang/CharSequence;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    .line 161
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/towbook/utils/AppUtils;->parseDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static parseDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 4

    .line 173
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 177
    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->cleanNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    return-object p1
.end method

.method public static reSize(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x1

    .line 1119
    invoke-static {p0, p1, v0}, Lcom/towbook/utils/AppUtils;->reSize(Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static reSize(Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x0

    .line 1127
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1130
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 1131
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1132
    invoke-static {v1, v0, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1133
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1137
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1138
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1141
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1142
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v4, 0x780

    const/16 v5, 0x438

    .line 1144
    invoke-static {v2, v5, v4}, Lcom/towbook/utils/AppUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_a6

    const/4 v6, 0x0

    .line 1149
    :try_start_2d
    invoke-static {v1, v0, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2d .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_a6

    goto :goto_4c

    .line 1151
    :catch_32
    :try_start_32
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1153
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1154
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1155
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1156
    invoke-static {v2, v5, v4}, Lcom/towbook/utils/AppUtils;->calculateInSampleSizeAutofit(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1157
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1159
    invoke-static {v1, v0, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_4c
    if-eqz p2, :cond_53

    .line 1162
    invoke-static {p1, p0}, Lcom/towbook/utils/AppUtils;->autoRotateImage(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    goto :goto_54

    :cond_53
    const/4 p0, 0x0

    :goto_54
    if-eqz v2, :cond_a5

    .line 1166
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1167
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {p2, v5, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1168
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v4, 0x44870000    # 1080.0f

    const/high16 v7, 0x44f00000    # 1920.0f

    invoke-direct {v1, v5, v5, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1169
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p2, v1, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    if-eqz p0, :cond_80

    int-to-float p0, p0

    .line 1172
    invoke-static {v2, p0}, Lcom/towbook/utils/AppUtils;->RotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_80
    const/16 p0, 0x9

    .line 1175
    new-array p0, p0, [F

    .line 1176
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->getValues([F)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_87} :catch_a6

    .line 1180
    :try_start_87
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    aget p2, p0, v6

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 v1, 0x4

    aget p0, p0, v1

    mul-float p2, p2, p0

    float-to-int p0, p2

    invoke-static {v2, p1, p0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_87 .. :try_end_a0} :catch_a1
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_a0} :catch_a6

    return-object p0

    .line 1182
    :catch_a1
    :try_start_a1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a6

    return-object v0

    :cond_a5
    return-object v0

    :catch_a6
    move-exception p0

    const-string p1, "Image"

    .line 1190
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static reSize(Ljava/lang/String;ZLandroid/app/Activity;I)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public static reSizeForSticker(Ljava/lang/String;ZLcom/towbook/mobile/stickering/StickerViewActivity;I)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeAccount(Landroid/content/Context;)V
    .registers 5

    .line 1278
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1280
    new-instance v1, Lcom/towbook/utils/AppUtils$2;

    invoke-direct {v1}, Lcom/towbook/utils/AppUtils$2;-><init>()V

    .line 1286
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0f001e

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 1290
    array-length v3, p0

    if-lez v3, :cond_28

    const/4 v3, 0x0

    .line 1291
    aget-object p0, p0, v3

    .line 1292
    invoke-virtual {v2, p0, v1, v0}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_28
    return-void
.end method

.method public static removeTieredStorageItems(Ljava/util/List;Lcom/towbook/api/ConfigSettings;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;",
            "Lcom/towbook/api/ConfigSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/towbook/api/InvoiceItem;",
            ">;"
        }
    .end annotation

    .line 1865
    invoke-static {p0, p1}, Lcom/towbook/utils/AppUtils;->cloneListInvoiceItemEdit(Ljava/util/List;Lcom/towbook/api/ConfigSettings;)Ljava/util/List;

    move-result-object v0

    .line 1867
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/InvoiceItem;

    .line 1868
    invoke-virtual {v2}, Lcom/towbook/api/InvoiceItem;->getRelatedId()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1b

    goto :goto_8

    .line 1871
    :cond_1b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/towbook/api/InvoiceItem;

    .line 1872
    invoke-virtual {v2}, Lcom/towbook/api/InvoiceItem;->getRelatedId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lcom/towbook/api/InvoiceItem;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1f

    .line 1873
    invoke-virtual {p1}, Lcom/towbook/api/ConfigSettings;->getRateItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_41
    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/towbook/api/RateItem;

    .line 1874
    invoke-virtual {v4}, Lcom/towbook/api/InvoiceItem;->getRateItemId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6}, Lcom/towbook/api/RateItem;->getId()I

    move-result v8

    if-ne v7, v8, :cond_41

    .line 1875
    invoke-virtual {v6}, Lcom/towbook/api/RateItem;->getCategoryId()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_41

    .line 1876
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_66
    return-object v0
.end method

.method public static requestBasePermissions(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2202
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2de

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestBasePermissionsRationale(Landroid/app/Activity;)V
    .registers 9

    const-string v0, "app_location_perm_dismiss"

    .line 2212
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 2214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2218
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0f0271

    .line 2222
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0f00ab

    .line 2223
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2c

    const v1, 0x7f0f0267

    .line 2224
    :goto_26
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_30

    :cond_2c
    const v1, 0x7f0f02b6

    goto :goto_26

    :goto_30
    new-instance v6, Lcom/towbook/utils/AppUtils$$Lambda$1;

    invoke-direct {v6, p0}, Lcom/towbook/utils/AppUtils$$Lambda$1;-><init>(Landroid/app/Activity;)V

    new-instance v7, Lcom/towbook/utils/AppUtils$$Lambda$2;

    invoke-direct {v7, v0, p0}, Lcom/towbook/utils/AppUtils$$Lambda$2;-><init>(ZLandroid/app/Activity;)V

    move-object v2, p0

    .line 2220
    invoke-static/range {v2 .. v7}, Lcom/towbook/common/DialogHelper;->CustomSnackbar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/content/Context;I[Ljava/lang/String;)Z
    .registers 10

    .line 1944
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_35

    .line 1945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1946
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    :goto_10
    if-ge v1, v2, :cond_21

    aget-object v5, p2, v1

    .line 1947
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1e

    .line 1948
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    if-nez v4, :cond_34

    .line 1954
    new-array p2, v3, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1956
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_34

    .line 1957
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p2, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_34
    move v1, v4

    :cond_35
    return v1
.end method

.method public static restart(Landroid/app/Activity;Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p1, 0x14008000

    .line 2425
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2428
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 2429
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5, v6, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2431
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x2

    .line 2432
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 5

    const-string v0, "Towbook"

    const/4 v1, 0x0

    .line 1031
    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1032
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 1033
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1034
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    const-string v0, "Towbook"

    const/4 v1, 0x0

    .line 1038
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1039
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 1040
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1041
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveDetailsPhotoToSqlLite(Ljava/util/List;Lcom/towbook/mobile/adapter/DBAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Photo;",
            ">;",
            "Lcom/towbook/mobile/adapter/DBAdapter;",
            ")V"
        }
    .end annotation

    .line 456
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->open()Lcom/towbook/mobile/adapter/DBAdapter;

    if-eqz p0, :cond_2d

    .line 457
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    .line 458
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Photo;

    invoke-virtual {v0}, Lcom/towbook/api/Photo;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->deletePhoto(I)Z

    .line 459
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Photo;

    .line 460
    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->insertPhoto(Lcom/towbook/api/Photo;)J

    goto :goto_1d

    .line 463
    :cond_2d
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->close()V

    return-void
.end method

.method public static saveDetailsPhotoToSqlLiteSticker(Ljava/util/List;Lcom/towbook/mobile/adapter/DBAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Photo;",
            ">;",
            "Lcom/towbook/mobile/adapter/DBAdapter;",
            ")V"
        }
    .end annotation

    .line 562
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->open()Lcom/towbook/mobile/adapter/DBAdapter;

    if-eqz p0, :cond_2d

    .line 563
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    .line 564
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Photo;

    invoke-virtual {v0}, Lcom/towbook/api/Photo;->getStickerId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->deletePhoto(I)Z

    .line 565
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Photo;

    .line 566
    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->insertStickerPhoto(Lcom/towbook/api/Photo;)J

    goto :goto_1d

    .line 569
    :cond_2d
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->close()V

    return-void
.end method

.method public static saveDetailsSignatureToSqlLite(Ljava/util/List;Lcom/towbook/mobile/adapter/DBAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Signature;",
            ">;",
            "Lcom/towbook/mobile/adapter/DBAdapter;",
            ")V"
        }
    .end annotation

    .line 490
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->open()Lcom/towbook/mobile/adapter/DBAdapter;

    if-eqz p0, :cond_2d

    .line 491
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    .line 492
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Signature;

    invoke-virtual {v0}, Lcom/towbook/api/Signature;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->deleteSignature(I)Z

    .line 493
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Signature;

    .line 494
    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->insertSignature(Lcom/towbook/api/Signature;)J

    goto :goto_1d

    .line 497
    :cond_2d
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->close()V

    return-void
.end method

.method public static saveDetailsVideoToSqlLite(Ljava/util/List;Lcom/towbook/mobile/adapter/DBAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/CallVideo;",
            ">;",
            "Lcom/towbook/mobile/adapter/DBAdapter;",
            ")V"
        }
    .end annotation

    .line 467
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->open()Lcom/towbook/mobile/adapter/DBAdapter;

    if-eqz p0, :cond_2d

    .line 468
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    .line 469
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/CallVideo;

    invoke-virtual {v0}, Lcom/towbook/api/CallVideo;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->deleteVideo(I)Z

    .line 471
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/CallVideo;

    .line 472
    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->insertVideo(Lcom/towbook/api/CallVideo;)J

    goto :goto_1d

    .line 475
    :cond_2d
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->close()V

    return-void
.end method

.method public static saveImage(Landroid/graphics/Bitmap;IILandroid/app/Activity;)V
    .registers 11

    const-string v0, "mounted"

    .line 383
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 384
    invoke-virtual {p3, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    goto :goto_24

    .line 386
    :cond_1c
    invoke-virtual {p3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 389
    :goto_24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const-string v5, "Towbook"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 391
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s/%d-%d.jpg"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    const-string p3, "Towbook"

    aput-object p3, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 392
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    :try_start_62
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 396
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p0, :cond_73

    .line 398
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x3c

    invoke-virtual {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 399
    :cond_73
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 400
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_79} :catch_7a

    goto :goto_84

    :catch_7a
    move-exception p0

    const-string p1, "[Towbook-AppUtils]"

    .line 402
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_84
    return-void
.end method

.method public static saveImpounds(Lcom/towbook/api/Impound;Landroid/content/Context;)V
    .registers 9

    const-string v0, "impounds"

    .line 1582
    invoke-static {v0, p1}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1583
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1584
    new-instance v2, Lcom/towbook/utils/AppUtils$3;

    invoke-direct {v2}, Lcom/towbook/utils/AppUtils$3;-><init>()V

    .line 1585
    invoke-virtual {v2}, Lcom/towbook/utils/AppUtils$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1584
    instance-of v3, v1, Lcom/google/gson/Gson;

    if-nez v3, :cond_1d

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_24

    :cond_1d
    move-object v4, v1

    check-cast v4, Lcom/google/gson/Gson;

    invoke-static {v4, v0, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    :goto_24
    check-cast v0, Ljava/util/List;

    .line 1586
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v2, :cond_43

    .line 1588
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/towbook/api/Impound;

    invoke-virtual {v5}, Lcom/towbook/api/Impound;->getId()I

    move-result v5

    invoke-virtual {p0}, Lcom/towbook/api/Impound;->getId()I

    move-result v6

    if-ne v5, v6, :cond_40

    .line 1589
    invoke-interface {v0, v4, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_43
    if-nez v3, :cond_4a

    .line 1591
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_50

    :cond_4a
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_50
    const-string v0, "impounds"

    .line 1592
    invoke-static {v0, p0, p1}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static savePhotoForSticker(Landroid/graphics/Bitmap;IILandroid/app/Activity;)V
    .registers 12

    .line 439
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string v5, "Towbook/stickers"

    const/4 v7, 0x1

    aput-object v5, v3, v7

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 440
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 441
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s/%d-%d.jpg"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p3, v4}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    aput-object p3, v3, v6

    const-string p3, "Towbook/stickers"

    aput-object p3, v3, v7

    .line 442
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v3, p2

    .line 441
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 443
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    :try_start_47
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 446
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 447
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x3c

    invoke-virtual {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 448
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 449
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5c} :catch_5d

    goto :goto_67

    :catch_5d
    move-exception p0

    const-string p1, "[Towbook-AppUtils]"

    .line 451
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_67
    return-void
.end method

.method public static saveStickerPhotoToSqlLite(Ljava/util/List;Lcom/towbook/mobile/adapter/DBAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Photo;",
            ">;",
            "Lcom/towbook/mobile/adapter/DBAdapter;",
            ")V"
        }
    .end annotation

    .line 479
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->open()Lcom/towbook/mobile/adapter/DBAdapter;

    if-eqz p0, :cond_2d

    .line 480
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    .line 481
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Photo;

    invoke-virtual {v0}, Lcom/towbook/api/Photo;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->deleteStickerPhoto(I)Z

    .line 482
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Photo;

    .line 483
    invoke-virtual {p1, v0}, Lcom/towbook/mobile/adapter/DBAdapter;->insertStickerPhoto(Lcom/towbook/api/Photo;)J

    goto :goto_1d

    .line 486
    :cond_2d
    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/DBAdapter;->close()V

    return-void
.end method

.method public static sendCancelCallBroadcast(Landroid/content/Context;I)V
    .registers 5

    .line 2062
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "call_update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TYPE"

    const-string v2, "cancel"

    .line 2063
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra"

    .line 2064
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2066
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendDeleteCallBroadcast(Landroid/content/Context;I)V
    .registers 5

    .line 2053
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "call_update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TYPE"

    const-string v2, "no_auth"

    .line 2055
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra"

    .line 2057
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2058
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendReport(Ljava/lang/Exception;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/towbook/mobile/classes/ItemDetail;",
            ">;)V"
        }
    .end annotation

    .line 1606
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "is-api-exception"

    const-string v2, "true"

    .line 1607
    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "function"

    .line 1608
    invoke-virtual {v0, v1, p1}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1609
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/towbook/mobile/classes/ItemDetail;

    .line 1610
    invoke-virtual {p2}, Lcom/towbook/mobile/classes/ItemDetail;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/towbook/mobile/classes/ItemDetail;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    .line 1612
    :cond_2c
    invoke-virtual {v0, p0}, Lorg/acra/ErrorReporter;->handleSilentException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static sendUnauthorizedCallBroadcast(Landroid/content/Context;I)V
    .registers 5

    .line 2038
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "call_update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TYPE"

    const-string v2, "no_auth"

    .line 2040
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra"

    .line 2042
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2043
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setAssetDelete(Lcom/towbook/api/Asset;)V
    .registers 2

    const/4 v0, 0x0

    .line 1712
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setYear(Ljava/lang/Integer;)V

    const-string v0, ""

    .line 1713
    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setMake(Ljava/lang/String;)V

    const-string v0, ""

    .line 1714
    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setModel(Ljava/lang/String;)V

    const-string v0, ""

    .line 1715
    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setVin(Ljava/lang/String;)V

    const-string v0, ""

    .line 1716
    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setLicenseNumber(Ljava/lang/String;)V

    const-string v0, ""

    .line 1717
    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setLicenseState(Ljava/lang/String;)V

    const-string v0, ""

    .line 1718
    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setOdometer(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1719
    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setColor(Lcom/towbook/api/Color;)V

    .line 1720
    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setDriver(Lcom/towbook/api/Driver;)V

    .line 1721
    invoke-virtual {p0, v0}, Lcom/towbook/api/Asset;->setTruck(Lcom/towbook/api/Truck;)V

    return-void
.end method

.method public static setContactDelete(Lcom/towbook/api/Contact;)V
    .registers 2

    const-string v0, ""

    .line 1298
    invoke-virtual {p0, v0}, Lcom/towbook/api/Contact;->setAddress(Ljava/lang/String;)V

    const-string v0, ""

    .line 1299
    invoke-virtual {p0, v0}, Lcom/towbook/api/Contact;->setCity(Ljava/lang/String;)V

    const-string v0, ""

    .line 1300
    invoke-virtual {p0, v0}, Lcom/towbook/api/Contact;->setEmail(Ljava/lang/String;)V

    const-string v0, ""

    .line 1301
    invoke-virtual {p0, v0}, Lcom/towbook/api/Contact;->setName(Ljava/lang/String;)V

    const-string v0, ""

    .line 1302
    invoke-virtual {p0, v0}, Lcom/towbook/api/Contact;->setPhone(Ljava/lang/String;)V

    const-string v0, ""

    .line 1303
    invoke-virtual {p0, v0}, Lcom/towbook/api/Contact;->setState(Ljava/lang/String;)V

    const-string v0, ""

    .line 1304
    invoke-virtual {p0, v0}, Lcom/towbook/api/Contact;->setZip(Ljava/lang/String;)V

    return-void
.end method

.method public static setNameAccount(Lcom/towbook/api/ApiItem;Lcom/towbook/api/ConfigSettings;)V
    .registers 5

    if-eqz p0, :cond_2b

    if-nez p1, :cond_5

    goto :goto_2b

    .line 754
    :cond_5
    invoke-virtual {p1}, Lcom/towbook/api/ConfigSettings;->getAccounts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Account;

    .line 755
    invoke-virtual {v0}, Lcom/towbook/api/Account;->getId()I

    move-result v1

    invoke-interface {p0}, Lcom/towbook/api/ApiItem;->getId()I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 756
    invoke-virtual {v0}, Lcom/towbook/api/Account;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/towbook/api/ApiItem;->setName(Ljava/lang/String;)V

    :cond_2a
    return-void

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static setSelected(Landroid/widget/Spinner;Ljava/lang/String;)V
    .registers 5

    const-string v0, "[Towbook-AppUtils]"

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value selected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {p0, p1}, Lcom/towbook/utils/AppUtils;->getSelectedItemSpinner(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result p1

    .line 871
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public static setSelectedForMake(Landroid/widget/Spinner;Ljava/lang/String;)V
    .registers 5

    const-string v0, "[Towbook-AppUtils]"

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value selected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {p0, p1}, Lcom/towbook/utils/AppUtils;->getSelectedItemSpinner(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result p1

    .line 877
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public static setStatus(Lcom/towbook/api/Status;Lcom/towbook/api/ConfigSettings;)V
    .registers 5

    if-eqz p0, :cond_39

    if-nez p1, :cond_5

    goto :goto_39

    .line 766
    :cond_5
    invoke-virtual {p1}, Lcom/towbook/api/ConfigSettings;->getStatuses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Status;

    .line 767
    invoke-virtual {v0}, Lcom/towbook/api/Status;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcom/towbook/api/Status;->getId()I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 768
    invoke-virtual {v0}, Lcom/towbook/api/Status;->getColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/towbook/api/Status;->setColor(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0}, Lcom/towbook/api/Status;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/towbook/api/Status;->setName(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0}, Lcom/towbook/api/Status;->getDisplayOrder()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/towbook/api/Status;->setDisplayOrder(I)V

    :cond_38
    return-void

    :cond_39
    :goto_39
    return-void
.end method

.method public static setStickerStatus(Lcom/towbook/api/stickering/StickerStatus;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/towbook/api/stickering/StickerStatus;",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/stickering/StickerStatus;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_35

    if-nez p1, :cond_5

    goto :goto_35

    .line 780
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/stickering/StickerStatus;

    .line 781
    invoke-virtual {v0}, Lcom/towbook/api/stickering/StickerStatus;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcom/towbook/api/stickering/StickerStatus;->getId()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 782
    invoke-virtual {v0}, Lcom/towbook/api/stickering/StickerStatus;->getHtmlColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/towbook/api/stickering/StickerStatus;->setHtmlColor(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0}, Lcom/towbook/api/stickering/StickerStatus;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/towbook/api/stickering/StickerStatus;->setName(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0}, Lcom/towbook/api/stickering/StickerStatus;->getDisplayOrder()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/towbook/api/stickering/StickerStatus;->setDisplayOrder(I)V

    :cond_34
    return-void

    :cond_35
    :goto_35
    return-void
.end method

.method public static setTokenExpired(Landroid/content/Context;)V
    .registers 5

    const-string v0, "[Towbook-AppUtils]"

    const-string v1, "Set time out token."

    .line 1506
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->getMyAccount(Landroid/content/Context;)Lcom/towbook/api/MyAccount;

    move-result-object v0

    const-string v1, "01/01/0001 00:00:00 AM"

    .line 1508
    invoke-virtual {v0, v1}, Lcom/towbook/api/MyAccount;->setExpires(Ljava/lang/String;)V

    const-string v1, "myaccount"

    .line 1509
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    instance-of v3, v2, Lcom/google/gson/Gson;

    if-nez v3, :cond_20

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_20
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_26
    invoke-static {v1, v0, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static shouldAskForLocationPermission(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2174
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static shouldAskForOverlayPermission(Landroid/content/Context;)Z
    .registers 3

    .line 2158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_30

    .line 2159
    invoke-static {p0}, Lcom/towbook/mobile/TowbookApplication;->getConfig(Landroid/content/Context;)Lcom/towbook/api/ConfigSettings;

    .line 2160
    invoke-static {p0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser(Landroid/content/Context;)Lcom/towbook/api/CurrentUser;

    move-result-object v0

    .line 2161
    new-instance v1, Lcom/towbook/Towbook;

    invoke-direct {v1, p0}, Lcom/towbook/Towbook;-><init>(Landroid/content/Context;)V

    .line 2163
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_30

    .line 2164
    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isManager()Z

    move-result p0

    if-nez p0, :cond_24

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isDispatcher()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 2165
    :cond_24
    invoke-virtual {v1}, Lcom/towbook/Towbook;->accounts()Lcom/towbook/businessModel/Accounts;

    move-result-object p0

    invoke-virtual {p0}, Lcom/towbook/businessModel/Accounts;->hasMotorClubAccounts()Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1986
    invoke-static {p0, p1, v0}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object p0

    invoke-virtual {p0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    return-void
.end method

.method public static showSettingsSnackbarFor(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 5

    const-string v0, "SETTINGS"

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 1990
    invoke-static {p0, v0, p1, v1, p2}, Lcom/towbook/utils/AppUtils;->showSnackbarFor(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static showSnackbarFor(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const v0, 0x1020002

    .line 1994
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p2

    .line 1996
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    .line 1997
    new-instance v0, Lcom/towbook/utils/AppUtils$$Lambda$0;

    invoke-direct {v0, p3, p0, p4}, Lcom/towbook/utils/AppUtils$$Lambda$0;-><init>(Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {p2, p1, v0}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 2004
    invoke-virtual {p2}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0903cf

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, -0x1

    .line 2005
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2007
    invoke-virtual {p2}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public static storeImageInDevice(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 407
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 410
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 414
    :cond_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 415
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p0, :cond_27

    .line 418
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x3c

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 421
    :cond_27
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 422
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2d} :catch_2e

    goto :goto_38

    :catch_2e
    move-exception p0

    const-string v0, "[Towbook-AppUtils]"

    .line 424
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-object p1
.end method

.method public static timeStamp(Ljava/lang/String;ZLcom/towbook/mobile/CallViewActivity;I)Ljava/lang/String;
    .registers 12

    .line 250
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 251
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p3, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x0

    .line 252
    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 253
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 255
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 256
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 258
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 260
    invoke-virtual {p2}, Lcom/towbook/mobile/CallViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x43480000    # 200.0f

    move-object v1, p1

    move-object v6, v7

    .line 262
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 264
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v1, 0x42200000    # 40.0f

    .line 265
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 266
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 267
    invoke-virtual {v7, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 268
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string p3, "Hello World!"

    const/high16 v0, 0x41f00000    # 30.0f

    .line 269
    invoke-virtual {p1, p3, v0, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    invoke-virtual {p2}, Lcom/towbook/mobile/CallViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0602a8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v7, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x41200000    # 10.0f

    .line 272
    invoke-virtual {p1, p0, p2, p2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string p0, "path"

    return-object p0
.end method

.method public static toString(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 219
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "Yes"

    return-object p0

    :cond_e
    const-string p0, "No"

    return-object p0
.end method

.method public static updateMenuSelection(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "MENU_SELECTION"

    .line 1045
    invoke-static {v0, p1, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static updateStatusListCall(ILcom/towbook/api/Status;)V
    .registers 5

    .line 791
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Call;

    .line 792
    invoke-virtual {v1}, Lcom/towbook/api/Call;->getId()I

    move-result v2

    if-ne v2, p0, :cond_6

    .line 793
    invoke-virtual {v1, p1}, Lcom/towbook/api/Call;->setStatus(Lcom/towbook/api/Status;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 234
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static verifyNetworkMetered(Landroid/app/Activity;)V
    .registers 8

    .line 2375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3c

    :try_start_6
    const-string v0, "connectivity"

    .line 2377
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3c

    .line 2379
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2381
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    goto :goto_3c

    :pswitch_1e
    const-string v2, "Allow mobile data usage while Data saver on"

    const-string v3, "DISMISS"

    const-string v4, "ALLOW"

    const/4 v5, 0x0

    .line 2386
    new-instance v6, Lcom/towbook/utils/AppUtils$$Lambda$3;

    invoke-direct {v6, p0}, Lcom/towbook/utils/AppUtils$$Lambda$3;-><init>(Landroid/app/Activity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/towbook/common/DialogHelper;->CustomSnackbar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_2e} :catch_2f

    goto :goto_3c

    :catch_2f
    move-exception v0

    .line 2413
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object p0

    invoke-virtual {p0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    :cond_3c
    :goto_3c
    :pswitch_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_3c
        :pswitch_1e
    .end packed-switch
.end method

.method public static videoExists(Lcom/towbook/api/CallVideo;Landroid/app/Activity;)Z
    .registers 6

    .line 325
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%s/%s/%d-%d.jpg"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Towbook"

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 326
    invoke-virtual {p0}, Lcom/towbook/api/CallVideo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {p0}, Lcom/towbook/api/CallVideo;->getCallId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 325
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-virtual {p0, p1}, Lcom/towbook/api/CallVideo;->setLocalPath(Ljava/lang/String;)V

    .line 330
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static zeroOrValue(Ljava/lang/Double;)D
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1761
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public isExternalStorageReadable()Z
    .registers 3

    .line 2335
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2336
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "mounted_ro"

    .line 2337
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public isExternalStorageWritable()Z
    .registers 3

    .line 2327
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2328
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
