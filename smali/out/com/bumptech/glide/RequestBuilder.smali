.class public Lcom/bumptech/glide/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/bumptech/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lcom/bumptech/glide/ModelTypes<",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private errorBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final glide:Lcom/bumptech/glide/Glide;

.field private final glideContext:Lcom/bumptech/glide/GlideContext;

.field private isDefaultTransitionOptionsSet:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private requestListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private final requestManager:Lcom/bumptech/glide/RequestManager;

.field protected requestOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private thumbSizeMultiplier:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 52
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    .line 81
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    .line 82
    iput-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 83
    iput-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 84
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 85
    iput-object p4, p0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    .line 86
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 87
    iget-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    iput-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 88
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/RequestBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p2, Lcom/bumptech/glide/RequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    iget-object v1, p2, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v2, p2, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    .line 93
    iget-object p1, p2, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    .line 94
    iget-boolean p1, p2, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    .line 95
    iget-object p1, p2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method private buildRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;
    .registers 13
    .param p2    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .line 879
    iget-object v4, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 884
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v5

    .line 885
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v6

    .line 886
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    .line 879
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;
    .registers 28
    .param p2    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/RequestCoordinator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 902
    iget-object v0, v9, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    if-eqz v0, :cond_10

    .line 903
    new-instance v0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object v3, v0

    move-object v15, v3

    goto :goto_15

    :cond_10
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v15, v0

    move-object v3, v1

    :goto_15
    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 908
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/RequestBuilder;->buildThumbnailRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    if-nez v15, :cond_2b

    return-object v0

    .line 922
    :cond_2b
    iget-object v1, v9, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v1

    .line 923
    iget-object v2, v9, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v2

    .line 924
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, v9, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, v3, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 925
    invoke-virtual {v3}, Lcom/bumptech/glide/request/RequestOptions;->isValidOverride()Z

    move-result v3

    if-nez v3, :cond_53

    .line 926
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v1

    .line 927
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v2

    :cond_53
    move/from16 v16, v1

    move/from16 v17, v2

    .line 930
    iget-object v10, v9, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, v9, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v14, v1, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    iget-object v1, v9, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 935
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iget-object v2, v9, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v18, v2

    .line 930
    invoke-direct/range {v10 .. v18}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v1

    .line 939
    invoke-virtual {v3, v0, v1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    return-object v3
.end method

.method private buildThumbnailRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;
    .registers 28
    .param p3    # Lcom/bumptech/glide/request/RequestCoordinator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v4, p3

    move-object/from16 v10, p5

    .line 952
    iget-object v0, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    if-eqz v0, :cond_9c

    .line 954
    iget-boolean v0, v9, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    if-eqz v0, :cond_16

    .line 955
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_16
    iget-object v0, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 964
    iget-object v1, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-boolean v1, v1, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    if-eqz v1, :cond_23

    move-object/from16 v14, p4

    goto :goto_24

    :cond_23
    move-object v14, v0

    .line 968
    :goto_24
    iget-object v0, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isPrioritySet()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 969
    iget-object v0, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_36
    move-object v15, v0

    goto :goto_3d

    :cond_38
    invoke-direct {v9, v10}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_36

    .line 971
    :goto_3d
    iget-object v0, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v0

    .line 972
    iget-object v1, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v1

    .line 973
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 974
    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_65

    .line 975
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v0

    .line 976
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v1

    :cond_65
    move/from16 v16, v0

    move/from16 v17, v1

    .line 979
    new-instance v13, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v13, v4}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v13

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    .line 981
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    const/4 v1, 0x1

    .line 990
    iput-boolean v1, v9, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 992
    iget-object v10, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, v9, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v2, v13

    move-object/from16 v18, v1

    .line 993
    invoke-direct/range {v10 .. v18}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v1

    const/4 v3, 0x0

    .line 1002
    iput-boolean v3, v9, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 1003
    invoke-virtual {v2, v0, v1}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    return-object v2

    .line 1005
    :cond_9c
    iget-object v0, v9, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v0, :cond_d5

    .line 1007
    new-instance v11, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v11, v4}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v11

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    .line 1009
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v12

    .line 1018
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iget-object v1, v9, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 1019
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    .line 1028
    invoke-direct {v9, v10}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v6

    move-object v0, v9

    move-object/from16 v1, p1

    .line 1022
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 1032
    invoke-virtual {v11, v12, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    return-object v11

    :cond_d5
    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    .line 1036
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .registers 4
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 862
    sget-object v0, Lcom/bumptech/glide/RequestBuilder$2;->$SwitchMap$com$bumptech$glide$Priority:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_32

    .line 871
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 869
    :pswitch_28
    sget-object p1, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 866
    :pswitch_2b
    sget-object p1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 864
    :pswitch_2e
    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    return-object p1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method private into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/target/Target;
    .registers 6
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")TY;"
        }
    .end annotation

    .line 618
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 619
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    if-nez v0, :cond_12

    .line 621
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 624
    :cond_12
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    .line 625
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/RequestBuilder;->buildRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object p2

    .line 627
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 628
    invoke-interface {p2, v0}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 629
    invoke-direct {p0, p3, v0}, Lcom/bumptech/glide/RequestBuilder;->isSkipMemoryCacheWithCompletePreviousRequest(Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/Request;)Z

    move-result p3

    if-nez p3, :cond_3d

    .line 630
    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 635
    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/Request;

    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result p2

    if-nez p2, :cond_3c

    .line 639
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    :cond_3c
    return-object p1

    .line 644
    :cond_3d
    iget-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 645
    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 646
    iget-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/RequestManager;->track(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/Request;)V

    return-object p1
.end method

.method private isSkipMemoryCacheWithCompletePreviousRequest(Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/Request;)Z
    .registers 3

    .line 658
    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestOptions;->isMemoryCacheable()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 360
    iput-boolean p1, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    return-object p0
.end method

.method private obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    move-object v0, p0

    .line 1057
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    iget-object v3, v0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    iget-object v4, v0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    iget-object v11, v0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    iget-object v5, v0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 1070
    invoke-virtual {v5}, Lcom/bumptech/glide/GlideContext;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v13

    .line 1071
    invoke-virtual/range {p5 .. p5}, Lcom/bumptech/glide/TransitionOptions;->getTransitionFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;

    move-result-object v14

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    .line 1057
    invoke-static/range {v1 .. v14}, Lcom/bumptech/glide/request/SingleRequest;->obtain(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    if-nez v0, :cond_d

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 179
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object p0
.end method

.method public apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method public clone()Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 586
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 587
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 588
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/TransitionOptions;->clone()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    :try_end_16
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    .line 591
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 851
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    return-object p0
.end method

.method protected getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 857
    new-instance v0, Lcom/bumptech/glide/RequestBuilder;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object v1, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-ne v0, v1, :cond_d

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_f
    return-object v0
.end method

.method public into(II)Lcom/bumptech/glide/request/FutureTarget;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 729
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)TY;"
        }
    .end annotation

    .line 611
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    .registers 5
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 674
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 675
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 678
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isTransformationSet()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 679
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 680
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 684
    sget-object v1, Lcom/bumptech/glide/RequestBuilder$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    goto :goto_4d

    .line 697
    :pswitch_2a
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_4d

    .line 694
    :pswitch_33
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_4d

    .line 689
    :pswitch_3c
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_4d

    .line 686
    :pswitch_45
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 706
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 707
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/GlideContext;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    const/4 v1, 0x0

    .line 706
    invoke-direct {p0, p1, v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/target/ViewTarget;

    return-object p1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_2a
    .end packed-switch
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 161
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 387
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 413
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 414
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 465
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 489
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 528
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 354
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load([B)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 559
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 560
    iget-object v0, p1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isDiskCacheStrategySet()Z

    move-result v0

    if-nez v0, :cond_16

    .line 561
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 563
    :cond_16
    iget-object v0, p1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isSkipMemoryCacheSet()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 564
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheOf(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    :cond_27
    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public preload()Lcom/bumptech/glide/request/target/Target;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 817
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->preload(II)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public preload(II)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/request/target/PreloadTarget;->obtain(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/request/target/PreloadTarget;

    move-result-object p1

    .line 803
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public submit()Lcom/bumptech/glide/request/FutureTarget;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 746
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public submit(II)Lcom/bumptech/glide/request/FutureTarget;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 763
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 764
    invoke-virtual {v1}, Lcom/bumptech/glide/GlideContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;II)V

    .line 766
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 767
    iget-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {p1}, Lcom/bumptech/glide/GlideContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/RequestBuilder$1;

    invoke-direct {p2, p0, v0}, Lcom/bumptech/glide/RequestBuilder$1;-><init>(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 776
    :cond_20
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/request/target/Target;

    :goto_23
    return-object v0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    goto :goto_13

    .line 338
    :cond_c
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    return-object p0

    .line 336
    :cond_13
    :goto_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    return-object p0
.end method

.method public varargs thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .registers 5
    .param p1    # [Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 273
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_21

    .line 283
    :cond_7
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1c

    .line 284
    aget-object v2, p1, v1

    if-nez v2, :cond_11

    goto :goto_19

    :cond_11
    if-nez v0, :cond_15

    move-object v0, v2

    goto :goto_19

    .line 295
    :cond_15
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    :goto_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 298
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    .line 274
    :cond_21
    :goto_21
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .param p1    # Lcom/bumptech/glide/TransitionOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/TransitionOptions;

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    return-object p0
.end method
