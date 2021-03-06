<fieldset>
	<legend>New Person</legend>
	<form action='/rar/people/new' method='post' class='NWForm' >
		<div>
			<label>Name</label>
			<input type='text' name='newPersonForm[name]' data-validators='required nwNameIsUnique' data-nwNameIsUnique-url='/rar/people/check-name-taken' />
		</div>
		<div>
			<label>E-mail</label>
			<input type='email' name='newPersonForm[email]' data-validators='required  validate-email nwEmailIsUnique' data-nwEmailIsUnique-url='/rar/people/check-email-taken' />
		</div>
		<div>
			<label>Phone Number</label>
			<input type='text' name='newPersonForm[phone]' data-validators='required nwPhoneIsUnique' data-nwPhoneIsUnique-url='/rar/people/check-phone-taken' />
		</div>
		<div>
			<label>When can you leave?</label>
			<input type='text' name='newPersonForm[departureTime]' class='NWDatePicker' data-validators='required' data-nwDatePicker-options={literal}'{timePicker:true, format:"%A %B %e, %Y %H:%M"}'{/literal} />
		</div>
		<div>
			<label class='checkbox'>
				<input type='checkbox' name='newPersonForm[driver]' class="validate-toggle-oncheck toToggle:['newPersonForm-capacity']" />
				I have a car I can drive
			</label>
		</div>
		<div>
			<label>How many people (including yourself) can you fit in your car?</label>
			<input type='text' name='newPersonForm[capacity]' id='newPersonForm-capacity' />
		</div>
		<div>
			<label>Preference 1</label>
			<input type='text' name='newPersonForm[preference1]' />
		</div>
		<div>
			<label>Preference 2</label>
			<input type='text' name='newPersonForm[preference2]' />
		</div>
		<div>
			<label>Antipreference 1</label>
			<input type='text' name='newPersonForm[antipreference1]' />
		</div>
		<div>
			<label>Antipreference 2</label>
			<input type='text' name='newPersonForm[antipreference2]' />
		</div>
		<div>
			<button type='submit'>Submit</button>
		</div>
	</form>
</fieldset>