.class Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;
.super Ljava/lang/Object;
.source "RuleMemberValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/rules/RuleMemberValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private final annotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private methods:Z

.field private final validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->annotation:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->methods:Z

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->validators:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V
    .registers 3

    .line 111
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)Ljava/util/List;
    .registers 1

    .line 111
    iget-object p0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->validators:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)Ljava/lang/Class;
    .registers 1

    .line 111
    iget-object p0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->annotation:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$900(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)Z
    .registers 1

    .line 111
    iget-boolean p0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->methods:Z

    return p0
.end method


# virtual methods
.method build()Lorg/junit/internal/runners/rules/RuleMemberValidator;
    .registers 2

    .line 133
    new-instance v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-direct {v0, p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)V

    return-object v0
.end method

.method forMethods()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->methods:Z

    return-object p0
.end method

.method withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;
    .registers 3

    .line 128
    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->validators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method