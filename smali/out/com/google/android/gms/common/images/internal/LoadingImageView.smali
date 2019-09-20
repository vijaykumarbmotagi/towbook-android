.class public final Lcom/google/android/gms/common/images/internal/LoadingImageView;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/internal/LoadingImageView$ClipPathProvider;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_ADJUST_HEIGHT:I = 0x2

.field public static final ASPECT_RATIO_ADJUST_NONE:I = 0x0

.field public static final ASPECT_RATIO_ADJUST_WIDTH:I = 0x1

.field private static zzqm:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

.field private mPostProcessingFlags:I

.field private zzpl:Z

.field private zzpm:Z

.field private zzqn:Landroid/net/Uri;

.field private zzqo:I

.field private zzqp:Z

.field private zzqq:I

.field private zzqr:Lcom/google/android/gms/common/images/internal/LoadingImageView$ClipPathProvider;

.field private zzqs:I

.field private zzqt:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/images/internal/LoadingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqo:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzpl:Z

    iput-boolean p3, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzpm:Z

    iput-boolean p3, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqp:Z

    iput p3, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqq:I

    iput p3, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->mPostProcessingFlags:I

    iput p3, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqs:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqt:F

    sget-object v1, Lcom/google/android/gms/base/R$styleable;->LoadingImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/gms/base/R$styleable;->LoadingImageView_imageAspectRatioAdjust:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqs:I

    sget p2, Lcom/google/android/gms/base/R$styleable;->LoadingImageView_imageAspectRatio:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqt:F

    sget p2, Lcom/google/android/gms/base/R$styleable;->LoadingImageView_circleCrop:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->setCircleCropEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final zzc(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqn:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_c
    return-void
.end method


# virtual methods
.method public final clearAspectRatioAdjust()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqs:I

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqs:I

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->requestLayout()V

    :cond_a
    return-void
.end method

.method public final clearImage()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->loadUri(Landroid/net/Uri;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqp:Z

    return-void
.end method

.method public final getLoadedNoDataPlaceholderResId()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqo:I

    return v0
.end method

.method public final getLoadedUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqn:Landroid/net/Uri;

    return-object v0
.end method

.method public final loadUri(Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->loadUri(Landroid/net/Uri;IZZ)V

    return-void
.end method

.method public final loadUri(Landroid/net/Uri;I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->loadUri(Landroid/net/Uri;IZZ)V

    return-void
.end method

.method public final loadUri(Landroid/net/Uri;IZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->loadUri(Landroid/net/Uri;IZZ)V

    return-void
.end method

.method public final loadUri(Landroid/net/Uri;IZZ)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqn:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_12

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqn:Landroid/net/Uri;

    if-nez v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqn:Landroid/net/Uri;

    if-eqz v2, :cond_1c

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzc(Z)V

    return-void

    :cond_1c
    iget v2, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqo:I

    if-ne v2, p2, :cond_24

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzc(Z)V

    return-void

    :cond_24
    sget-object v2, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqm:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v2, :cond_44

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.play.games"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/common/images/ImageManager;->create(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqm:Lcom/google/android/gms/common/images/ImageManager;

    :cond_44
    iget-boolean v2, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzpm:Z

    if-nez v2, :cond_4e

    iget-boolean v2, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqp:Z

    if-eqz v2, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :cond_4e
    :goto_4e
    iput-boolean v1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqp:Z

    new-instance v1, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/images/ImageRequest;->setNoDataPlaceholder(I)V

    iget-boolean p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzpl:Z

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/images/ImageRequest;->setCrossFadeEnabled(Z)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/images/ImageRequest;->setCrossFadeAlwaysEnabled(Z)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/images/ImageRequest;->setLoadingPlaceholderEnabled(Z)V

    iget p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->mPostProcessingFlags:I

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/images/ImageRequest;->setPostProcessingFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/images/ImageRequest;->setOnImageLoadedListener(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;)V

    invoke-virtual {v1, p4}, Lcom/google/android/gms/common/images/ImageRequest;->setUseNewDrawable(Z)V

    sget-object p1, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqm:Lcom/google/android/gms/common/images/ImageManager;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageRequest;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqr:Lcom/google/android/gms/common/images/internal/LoadingImageView$ClipPathProvider;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqr:Lcom/google/android/gms/common/images/internal/LoadingImageView$ClipPathProvider;

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/images/internal/LoadingImageView$ClipPathProvider;->getClipPath(II)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqq:I

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqq:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_21
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqs:I

    packed-switch p1, :pswitch_data_22

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->getMeasuredWidth()I

    move-result p1

    int-to-float p2, p1

    iget v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqt:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_1d

    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->getMeasuredHeight()I

    move-result p2

    int-to-float p1, p2

    iget v0, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqt:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    :goto_1d
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->setMeasuredDimension(II)V

    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public final setCircleCropEnabled(Z)V
    .registers 2

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->mPostProcessingFlags:I

    or-int/lit8 p1, p1, 0x1

    :goto_6
    iput p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->mPostProcessingFlags:I

    return-void

    :cond_9
    iget p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->mPostProcessingFlags:I

    and-int/lit8 p1, p1, -0x2

    goto :goto_6
.end method

.method public final setClipPathProvider(Lcom/google/android/gms/common/images/internal/LoadingImageView$ClipPathProvider;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqr:Lcom/google/android/gms/common/images/internal/LoadingImageView$ClipPathProvider;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_d
    return-void
.end method

.method public final setCrossFadeAlwaysEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzpm:Z

    return-void
.end method

.method public final setCrossFadeEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzpl:Z

    return-void
.end method

.method public final setImageAspectRatioAdjust(IF)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    if-eq p1, v1, :cond_c

    const/4 v2, 0x2

    if-ne p1, v2, :cond_a

    goto :goto_c

    :cond_a
    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iput p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqs:I

    iput p2, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqt:F

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->requestLayout()V

    return-void
.end method

.method public final setLoadedNoDataPlaceholderResId(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqo:I

    return-void
.end method

.method public final setLoadedUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqn:Landroid/net/Uri;

    return-void
.end method

.method public final setOnImageLoadedListener(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    return-void
.end method

.method public final setTintColor(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqq:I

    iget p1, p0, Lcom/google/android/gms/common/images/internal/LoadingImageView;->zzqq:I

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/common/images/internal/ColorFilters;->COLOR_FILTER_BW:Landroid/graphics/ColorFilter;

    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_e

    :cond_c
    const/4 p1, 0x0

    goto :goto_8

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->invalidate()V

    return-void
.end method

.method public final setTintColorId(I)V
    .registers 3

    if-lez p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/images/internal/LoadingImageView;->setTintColor(I)V

    return-void
.end method