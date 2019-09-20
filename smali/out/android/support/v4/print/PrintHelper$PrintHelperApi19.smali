.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperApi19"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperApi19"

.field private static final MAX_PRINT_SIZE:I = 0xdac


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mIsMinMarginsHandlingCorrect:Z

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field protected mPrintActivityRespectsOrientation:Z

.field mScaleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 218
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    .line 220
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mPrintActivityRespectsOrientation:Z

    .line 226
    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    .line 228
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 7

    .line 199
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 5

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Landroid/graphics/Bitmap;)Z
    .registers 1

    .line 199
    invoke-static {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;)Ljava/lang/Object;
    .registers 1

    .line 199
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    return-object p1

    .line 818
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 820
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 821
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 822
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v3, 0x0

    .line 823
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 824
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 825
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 826
    invoke-virtual {v0, p1, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 827
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 8

    .line 419
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 422
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/4 v2, 0x2

    if-ne p4, v2, :cond_19

    .line 424
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p4

    int-to-float v2, p2

    div-float/2addr p4, v2

    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    goto :goto_23

    .line 426
    :cond_19
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p4

    int-to-float v2, p2

    div-float/2addr p4, v2

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 428
    :goto_23
    invoke-virtual {v0, p4, p4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 431
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float p1, p1, p4

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    .line 433
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    int-to-float p2, p2

    mul-float p2, p2, p4

    sub-float/2addr p3, p2

    div-float/2addr p3, p1

    .line 435
    invoke-virtual {v0, v1, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method private static isPortrait(Landroid/graphics/Bitmap;)Z
    .registers 2

    .line 317
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-gt v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_38

    .line 795
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_38

    :cond_7
    const/4 v0, 0x0

    .line 800
    :try_start_8
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_28

    .line 801
    :try_start_12
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_25

    if-eqz p1, :cond_24

    .line 805
    :try_start_18
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p1

    const-string v0, "PrintHelperApi19"

    const-string v1, "close fail "

    .line 807
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    :goto_24
    return-object p2

    :catchall_25
    move-exception p2

    move-object v0, p1

    goto :goto_29

    :catchall_28
    move-exception p2

    :goto_29
    if-eqz v0, :cond_37

    .line 805
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception p1

    const-string v0, "PrintHelperApi19"

    const-string v1, "close fail "

    .line 807
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    :cond_37
    :goto_37
    throw p2

    .line 796
    :cond_38
    :goto_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad argument to loadBitmap"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_67

    .line 745
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_67

    .line 749
    :cond_7
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 750
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 751
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 753
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 754
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v3, 0x0

    if-lez v2, :cond_66

    if-gtz v0, :cond_1c

    goto :goto_66

    .line 762
    :cond_1c
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    :goto_21
    const/16 v6, 0xdac

    if-le v4, v6, :cond_2a

    ushr-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_2a
    if-lez v5, :cond_65

    .line 771
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/2addr v0, v5

    if-gtz v0, :cond_34

    goto :goto_65

    .line 775
    :cond_34
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_37
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 777
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 778
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 779
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 780
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_62

    .line 782
    :try_start_49
    invoke-direct {p0, p1, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_57

    .line 784
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_50
    iput-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 786
    monitor-exit v0

    return-object p1

    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    throw p1

    :catchall_57
    move-exception p1

    .line 784
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 785
    :try_start_5b
    iput-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 786
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    throw p1

    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1

    :catchall_62
    move-exception p1

    .line 780
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p1

    :cond_65
    :goto_65
    return-object v3

    :cond_66
    :goto_66
    return-object v3

    .line 746
    :cond_67
    :goto_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad argument to getScaledBitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 19

    move-object v9, p0

    .line 454
    iget-boolean v0, v9, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_8

    move-object v3, p1

    goto :goto_1a

    .line 459
    :cond_8
    invoke-virtual {v9, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    new-instance v1, Landroid/print/PrintAttributes$Margins;

    invoke-direct {v1, v10, v10, v10, v10}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 460
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v0

    move-object v3, v0

    .line 463
    :goto_1a
    new-instance v11, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;

    move-object v0, v11

    move-object v1, v9

    move-object/from16 v2, p5

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    new-array v0, v10, [Ljava/lang/Void;

    .line 562
    invoke-virtual {v11, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .registers 4

    .line 328
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 329
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 334
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    :cond_2a
    return-object v0
.end method

.method public getColorMode()I
    .registers 2

    .line 307
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 292
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 295
    :cond_6
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .line 255
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 13

    if-nez p2, :cond_3

    return-void

    .line 354
    :cond_3
    iget v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    .line 355
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    const-string v1, "print"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/print/PrintManager;

    .line 358
    invoke-static {p2}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 359
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    goto :goto_1b

    .line 361
    :cond_19
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    .line 363
    :goto_1b
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 364
    invoke-virtual {v1, v0}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    .line 365
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v7

    .line 368
    new-instance v8, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    invoke-virtual {v6, p1, v8, v7}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 578
    iget v5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    .line 580
    new-instance v6, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;I)V

    .line 721
    iget-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    const-string p3, "print"

    .line 722
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/print/PrintManager;

    .line 723
    new-instance p3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {p3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 724
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    invoke-virtual {p3, v0}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 726
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    if-nez v0, :cond_2a

    goto :goto_35

    .line 728
    :cond_2a
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 729
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p3, v0}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_3a

    .line 727
    :cond_35
    :goto_35
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p3, v0}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 731
    :cond_3a
    :goto_3a
    invoke-virtual {p3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object p3

    .line 733
    invoke-virtual {p2, p1, v6, p3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method

.method public setColorMode(I)V
    .registers 2

    .line 268
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 279
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    return-void
.end method

.method public setScaleMode(I)V
    .registers 2

    .line 243
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    return-void
.end method
