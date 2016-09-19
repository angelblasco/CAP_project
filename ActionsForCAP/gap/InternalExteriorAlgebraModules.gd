############################################################################
##
##                                ActionsForCAP package
##
##  Copyright 2016, Sebastian Gutsche, University of Siegen
##                  Sebastian Posur,   University of Siegen
##
#! @Chapter Internal Exterior Algebra Modules
##
#############################################################################

####################################
##
#! @Section Internals
##
####################################

## categories

DeclareCategory( "IsEModuleCategory", IsCapCategory );

DeclareCategory( "IsEModuleActionCategory", IsEModuleCategory );

DeclareCategory( "IsEModuleCoactionCategory", IsEModuleCategory );

## objects

DeclareCategory( "IsEModuleCategoryObject", IsCapCategoryObject );

DeclareCategory( "IsEModuleActionCategoryObject", IsEModuleCategoryObject and IsRightActionObject );

DeclareCategory( "IsEModuleCoactionCategoryObject", IsEModuleCategoryObject and IsLeftCoactionObject );

## morphisms

DeclareCategory( "IsEModuleCategoryMorphism", IsCapCategoryMorphism );

DeclareCategory( "IsEModuleActionCategoryMorphism", IsCapCategoryMorphism and IsRightActionMorphism );

DeclareCategory( "IsEModuleCoactionCategoryMorphism", IsCapCategoryMorphism and IsLeftCoactionMorphism );

## Tate filtration objects

DeclareCategory( "IsTateFiltrationObject", IsObject );

DeclareCategory( "IsTateFiltrationObjectUsingActions", IsTateFiltrationObject );

DeclareCategory( "IsTateFiltrationObjectUsingCoactions", IsTateFiltrationObject );

####################################
##
#! @Section Constructors
##
####################################

## categories
##
DeclareAttribute( "EModuleActionCategory", IsCapCategoryObject );

##
DeclareAttribute( "EModuleCoactionCategory", IsCapCategoryObject );

## objects
##
DeclareOperation( "EModuleActionCategoryObject",
                  [ IsCapCategoryMorphism, IsCapCategory ] );

##
DeclareOperation( "EModuleActionCategoryObject",
                  [ IsCapCategoryMorphism, IsCapCategoryObject ] );

##
DeclareOperation( "EModuleCoactionCategoryObject",
                  [ IsCapCategoryMorphism, IsCapCategory ] );

##
DeclareOperation( "EModuleCoactionCategoryObject",
                  [ IsCapCategoryMorphism, IsCapCategoryObject ] );

## morphisms
##
DeclareOperation( "EModuleCategoryMorphism",
                  [ IsEModuleCategoryObject, IsCapCategoryMorphism, IsEModuleCategoryObject ] );

##
DeclareOperation( "TateFiltrationObjectUsingActions",
                  [ IsRepresentationCategoryZGradedObject, IsRepresentationCategoryZGradedObject ] );

##
DeclareOperation( "TateFiltrationObjectUsingCoactions",
                  [ IsRepresentationCategoryZGradedObject, IsRepresentationCategoryZGradedObject ] );


####################################
##
#! @Section Attributes
##
####################################

##
DeclareAttribute( "ExteriorAlgebraAsModule", IsEModuleCategory );

##
DeclareAttribute( "ExteriorAlgebraAsModuleMultiplicationList", IsEModuleCategory );

##
DeclareAttribute( "ExteriorAlgebraUnderlyingObject", IsEModuleCategory );

##
DeclareAttribute( "ExteriorAlgebraDualAsModule", IsEModuleCategory );

##
DeclareAttribute( "ExteriorAlgebraDualAsModuleComultiplicationList", IsEModuleCategory );

##
DeclareAttribute( "ExteriorAlgebraDualUnderlyingObject", IsEModuleCategory );

##
DeclareAttribute( "TopExteriorPowerOfActingObject", IsEModuleActionCategory );

##
DeclareAttribute( "EModuleActionHigherMultiplications", IsEModuleActionCategoryObject );

##
DeclareAttribute( "EModuleCoactionHigherComultiplications", IsEModuleCoactionCategoryObject );


##
DeclareAttribute( "ProjectionToHead", IsEModuleCategoryObject );

##
DeclareAttribute( "Head", IsEModuleCategoryObject );

##
DeclareAttribute( "InjectionOfSocle", IsEModuleCategoryObject );

##
DeclareAttribute( "Socle", IsEModuleCategoryObject );

##
DeclareAttribute( "EModuleActionCategoryObjectAsCoactionCategoryObject", IsEModuleActionCategoryObject );

##
DeclareAttribute( "EModuleActionCategoryMorphismAsCoactionCategoryMorphism", IsEModuleActionCategoryMorphism );

## Attributes for Tate Filtration Objects
##
DeclareAttribute( "DefiningGradedObject", IsTateFiltrationObject );

##
DeclareAttribute( "ActingObject", IsTateFiltrationObject );

##
DeclareAttribute( "TopStationaryDegree", IsTateFiltrationObject );

##
DeclareAttribute( "BottomStationaryDegree", IsTateFiltrationObject );

##
DeclareAttribute( "DescendingFilteredObject", IsTateFiltrationObject );

##
KeyDependentOperation( "EmbeddingInSuperObjectOfTateFiltrationObject", IsTateFiltrationObject, IsInt, ReturnTrue );

##
KeyDependentOperation( "ProjectionFromSuperObjectOfTateFiltrationObject", IsTateFiltrationObject, IsInt, ReturnTrue );


####################################
##
#! @Section Operations
##
####################################

##
DeclareOperation( "FreeEModule",
                  [ IsCapCategoryObject, IsEModuleCategory ] );

##
DeclareOperation( "CofreeEModule",
                  [ IsCapCategoryObject, IsEModuleCategory ] );

##
DeclareOperation( "UniversalMorphismFromFreeModule",
                  [ IsEModuleActionCategoryObject, IsCapCategoryMorphism ] );

##
DeclareOperation( "UniversalMorphismToCofreeModule",
                  [ IsEModuleCoactionCategoryObject, IsCapCategoryMorphism ] );

##
DeclareAttribute( "StepOfMinimalFreeResolutionOfKernel",
                  IsEModuleActionCategoryMorphism );

##
DeclareAttribute( "StepOfMinimalCofreeResolutionOfCokernel",
                  IsEModuleCoactionCategoryMorphism );

##
KeyDependentOperation( "TateResolutionDifferential", IsEModuleActionCategoryMorphism, IsInt, ReturnTrue );

##
KeyDependentOperation( "TateResolutionFilteredDifferential", IsEModuleActionCategoryMorphism, IsInt, ReturnTrue );

