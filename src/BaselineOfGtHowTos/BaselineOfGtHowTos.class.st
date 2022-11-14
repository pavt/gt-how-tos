Class {
	#name : #BaselineOfGtHowTos,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtHowTos
}

{ #category : #accessing }
BaselineOfGtHowTos class >> loadLepiter [

| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'pavt'
				/ 'gt-how-tos' / 'lepiter'.
	LeDatabasesRegistry default defaultLogicalDatabase reload
]

{ #category : #accessing }
BaselineOfGtHowTos >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'GtHowTos' ]
]
